#include "gesture_interferer.h"
#include <algorithm>
#include <onnxruntime_cxx_api.h>
#include <iostream>

Ort::Env env{ORT_LOGGING_LEVEL_WARNING, "gesture"};
std::unique_ptr<Ort::Session> session;
std::string in_name, out_name;

bool load(const char* c_path) {
    if (c_path == nullptr) {
        std::cerr << "[load] error: null path provided" << std::endl;
        return false;
    }

    const auto path = std::string{c_path};
    if (path.empty()) {
        std::cerr << "[load] error: empty path provided" << std::endl;
        return false;
    }

    std::clog << "[load] loading model from: " << path << std::endl;

    try {
        session = std::make_unique<Ort::Session>(env, path.c_str(), Ort::SessionOptions{});
    } catch (const Ort::Exception& e) {
        std::cerr << "[load] ONNX Runtime error while creating session for '"
                  << path << "': " << e.what()
                  << " (code=" << e.GetOrtErrorCode() << ")" << std::endl;
        session.reset();
        return false;
    } catch (const std::exception& e) {
        std::cerr << "[load] std::exception while creating session for '"
                  << path << "': " << e.what() << std::endl;
        session.reset();
        return false;
    }

    try {
        Ort::AllocatorWithDefaultOptions allocator;

        const size_t num_inputs  = session->GetInputCount();
        const size_t num_outputs = session->GetOutputCount();
        if (num_inputs == 0 || num_outputs == 0) {
            std::cerr << "[load] error: model has " << num_inputs
                      << " inputs and " << num_outputs
                      << " outputs; expected at least 1 of each" << std::endl;
            session.reset();
            return false;
        }
        if (num_inputs > 1 || num_outputs > 1) {
            std::clog << "[load] warning: model has " << num_inputs
                      << " inputs and " << num_outputs
                      << " outputs; only the first of each will be used" << std::endl;
        }

        // NOTE: GetInputNameAllocated returns a smart pointer that owns the
        // string memory. Calling .get() and assigning to std::string copies
        // the contents before the temporary is destroyed, which is what we want.
        auto in_ptr  = session->GetInputNameAllocated(0, allocator);
        auto out_ptr = session->GetOutputNameAllocated(0, allocator);
        in_name  = in_ptr.get();
        out_name = out_ptr.get();

        std::clog << "[load] success: input='" << in_name
                  << "', output='" << out_name << "'" << std::endl;
        return true;
    } catch (const Ort::Exception& e) {
        std::cerr << "[load] ONNX Runtime error while querying I/O names: "
                  << e.what() << " (code=" << e.GetOrtErrorCode() << ")" << std::endl;
        session.reset();
        return false;
    } catch (const std::exception& e) {
        std::cerr << "[load] std::exception while querying I/O names: "
                  << e.what() << std::endl;
        session.reset();
        return false;
    }
}

int infer(const float *input) {
    if (!session) {
        std::cerr << "no session" << std::endl;
        return -1;
    }
    int64_t shape[] = {1, 64, 2};
    auto mem = Ort::MemoryInfo::CreateCpu(OrtArenaAllocator, OrtMemTypeDefault);
    auto tensor = Ort::Value::CreateTensor<float>(mem, const_cast<float*>(input), 128, shape, 3);
    const char *ins[]  = {in_name.c_str()};
    const char *outs[] = {out_name.c_str()};
    auto r = session->Run({}, ins, &tensor, 1, outs, 1);
    const float *d = r[0].GetTensorData<float>();
    size_t n = r[0].GetTensorTypeAndShapeInfo().GetElementCount();
    return std::distance(d, std::max_element(d, d + n));
}