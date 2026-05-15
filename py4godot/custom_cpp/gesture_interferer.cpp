#include "gesture_interferer.h"
#include <algorithm>
#include <onnxruntime_cxx_api.h>
#include <iostream>

Ort::Env env{ORT_LOGGING_LEVEL_WARNING, "gesture"};
std::unique_ptr<Ort::Session> session;
std::string in_name, out_name;

bool load(const char* c_path) {
    try {
        auto path = std::string{c_path};
        session = std::make_unique<Ort::Session>(env, path.c_str(), Ort::SessionOptions{});
        Ort::AllocatorWithDefaultOptions a;
        in_name  = session->GetInputNameAllocated(0, a).get();
        out_name = session->GetOutputNameAllocated(0, a).get();
        return true;
    } catch (...) {
        std::cerr << "error loading model" << std::endl;
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