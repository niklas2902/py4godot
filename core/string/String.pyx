from core.array.Array cimport *
from core.variant.Variant cimport *
from core.string.string_binding cimport *

cdef api set_api_core_string(godot_gdnative_core_api_struct * core):
    global api_core
    api_core = core

cdef class String:

    def __init__(self, string = None):
        if(string == None):
            api_core.godot_string_new(&self._native)
        else:
            api_core.godot_string_new_with_wide_string(&self._native,  PyUnicode_AsWideCharString(string, NULL), len(string))

    def new(String dest):
        api_core.godot_string_new(&dest._native)

    def new_copy(String dest,String src):
        api_core.godot_string_new_copy(&dest._native,&src._native)

    def operator_equal(self,String b):
        return api_core.godot_string_operator_equal(&self._native,&b._native)

    def operator_less(self,String b):
        return api_core.godot_string_operator_less(&self._native,&b._native)

    def operator_plus(self,String b):
        return String.new_static(api_core.godot_string_operator_plus(&self._native,&b._native))

    def length(self):
        return api_core.godot_string_length(&self._native)

    def casecmp_to(self,String str):
        return api_core.godot_string_casecmp_to(&self._native,&str._native)

    def nocasecmp_to(self,String str):
        return api_core.godot_string_nocasecmp_to(&self._native,&str._native)

    def naturalnocasecmp_to(self,String str):
        return api_core.godot_string_naturalnocasecmp_to(&self._native,&str._native)

    def begins_with(self,String string):
        return api_core.godot_string_begins_with(&self._native,&string._native)

    def bigrams(self):
        return Array.new_static(api_core.godot_string_bigrams(&self._native))

    def chr(wchar_t character):
        return String.new_static(api_core.godot_string_chr(character))

    def ends_with(self,String string):
        return api_core.godot_string_ends_with(&self._native,&string._native)

    def findmk(self,Array keys):
        return api_core.godot_string_findmk(&self._native,&keys._native)

    def findmk_from(self,Array keys,godot_int from_):
        return api_core.godot_string_findmk_from(&self._native,&keys._native,from_)

    def format(self,Variant values):
        return String.new_static(api_core.godot_string_format(&self._native,&values._native))

    def hex_encode_buffer(uint8_t buffer,godot_int len):
        return String.new_static(api_core.godot_string_hex_encode_buffer(buffer,len))

    def hex_to_int(self):
        return api_core.godot_string_hex_to_int(&self._native)

    def hex_to_int_without_prefix(self):
        return api_core.godot_string_hex_to_int_without_prefix(&self._native)

    def is_numeric(self):
        return api_core.godot_string_is_numeric(&self._native)

    def is_subsequence_of(self,String string):
        return api_core.godot_string_is_subsequence_of(&self._native,&string._native)

    def is_subsequence_ofi(self,String string):
        return api_core.godot_string_is_subsequence_ofi(&self._native,&string._native)

    def lpad(self,godot_int min_length):
        return String.new_static(api_core.godot_string_lpad(&self._native,min_length))

    def lpad_with_custom_character(self,godot_int min_length,String character):
        return String.new_static(api_core.godot_string_lpad_with_custom_character(&self._native,min_length,&character._native))

    def match(self,String wildcard):
        return api_core.godot_string_match(&self._native,&wildcard._native)

    def matchn(self,String wildcard):
        return api_core.godot_string_matchn(&self._native,&wildcard._native)

    def md5(uint8_t md5):
        return String.new_static(api_core.godot_string_md5(md5))

    def num(double num):
        return String.new_static(api_core.godot_string_num(num))

    def num_int64(int64_t num,godot_int base):
        return String.new_static(api_core.godot_string_num_int64(num,base))

    def num_int64_capitalized(int64_t num,godot_int base,godot_bool capitalize_hex):
        return String.new_static(api_core.godot_string_num_int64_capitalized(num,base,capitalize_hex))

    def num_real(double num):
        return String.new_static(api_core.godot_string_num_real(num))

    def num_scientific(double num):
        return String.new_static(api_core.godot_string_num_scientific(num))

    def num_with_decimals(double num,godot_int decimals):
        return String.new_static(api_core.godot_string_num_with_decimals(num,decimals))

    def pad_decimals(self,godot_int digits):
        return String.new_static(api_core.godot_string_pad_decimals(&self._native,digits))

    def pad_zeros(self,godot_int digits):
        return String.new_static(api_core.godot_string_pad_zeros(&self._native,digits))

    def rpad(self,godot_int min_length):
        return String.new_static(api_core.godot_string_rpad(&self._native,min_length))

    def rpad_with_custom_character(self,godot_int min_length,String character):
        return String.new_static(api_core.godot_string_rpad_with_custom_character(&self._native,min_length,&character._native))

    def similarity(self,String string):
        return api_core.godot_string_similarity(&self._native,&string._native)

    def substr(self,godot_int from_,godot_int chars):
        return String.new_static(api_core.godot_string_substr(&self._native,from_,chars))

    def to_double(self):
        return api_core.godot_string_to_double(&self._native)

    def to_float(self):
        return api_core.godot_string_to_float(&self._native)

    def to_int(self):
        return api_core.godot_string_to_int(&self._native)

    def camelcase_to_underscore(self):
        return String.new_static(api_core.godot_string_camelcase_to_underscore(&self._native))

    def camelcase_to_underscore_lowercased(self):
        return String.new_static(api_core.godot_string_camelcase_to_underscore_lowercased(&self._native))

    def capitalize(self):
        return String.new_static(api_core.godot_string_capitalize(&self._native))

    def char_to_double(char what):
        return api_core.godot_string_char_to_double(what)

    def char_to_int(char what):
        return api_core.godot_string_char_to_int(what)


    def char_to_int_with_len(char what,godot_int len):
        return api_core.godot_string_char_to_int_with_len(what,len)

    def hex_to_int64(self):
        return api_core.godot_string_hex_to_int64(&self._native)

    def hex_to_int64_with_prefix(self):
        return api_core.godot_string_hex_to_int64_with_prefix(&self._native)

    def to_int64(self):
        return api_core.godot_string_to_int64(&self._native)

    def get_slicec(self,wchar_t splitter,godot_int slice):
        return String.new_static(api_core.godot_string_get_slicec(&self._native,splitter,slice))

    def split(self,String splitter):
        return Array.new_static(api_core.godot_string_split(&self._native,&splitter._native))

    def split_allow_empty(self,String splitter):
        return Array.new_static(api_core.godot_string_split_allow_empty(&self._native,&splitter._native))

    def split_floats(self,String splitter):
        return Array.new_static(api_core.godot_string_split_floats(&self._native,&splitter._native))

    def split_floats_allows_empty(self,String splitter):
        return Array.new_static(api_core.godot_string_split_floats_allows_empty(&self._native,&splitter._native))

    def split_floats_mk(self,Array splitters):
        return Array.new_static(api_core.godot_string_split_floats_mk(&self._native,&splitters._native))

    def split_floats_mk_allows_empty(self,Array splitters):
        return Array.new_static(api_core.godot_string_split_floats_mk_allows_empty(&self._native,&splitters._native))

    def split_ints(self,String splitter):
        return Array.new_static(api_core.godot_string_split_ints(&self._native,&splitter._native))

    def split_ints_allows_empty(self,String splitter):
        return Array.new_static(api_core.godot_string_split_ints_allows_empty(&self._native,&splitter._native))

    def split_ints_mk(self,Array splitters):
        return Array.new_static(api_core.godot_string_split_ints_mk(&self._native,&splitters._native))

    def split_ints_mk_allows_empty(self,Array splitters):
        return Array.new_static(api_core.godot_string_split_ints_mk_allows_empty(&self._native,&splitters._native))

    def split_spaces(self):
        return Array.new_static(api_core.godot_string_split_spaces(&self._native))

    def char_lowercase(wchar_t char):
        return api_core.godot_string_char_lowercase(char)

    def char_uppercase(wchar_t char):
        return api_core.godot_string_char_uppercase(char)

    def to_lower(self):
        return String.new_static(api_core.godot_string_to_lower(&self._native))

    def to_upper(self):
        return String.new_static(api_core.godot_string_to_upper(&self._native))

    def get_basename(self):
        return String.new_static(api_core.godot_string_get_basename(&self._native))

    def get_extension(self):
        return String.new_static(api_core.godot_string_get_extension(&self._native))

    def left(self,godot_int pos):
        return String.new_static(api_core.godot_string_left(&self._native,pos))

    def ord_at(self,godot_int idx):
        return api_core.godot_string_ord_at(&self._native,idx)

    def plus_file(self,String file):
        return String.new_static(api_core.godot_string_plus_file(&self._native,&file._native))

    def right(self,godot_int pos):
        return String.new_static(api_core.godot_string_right(&self._native,pos))

    def strip_edges(self,godot_bool left,godot_bool right):
        return String.new_static(api_core.godot_string_strip_edges(&self._native,left,right))

    def strip_escapes(self):
        return String.new_static(api_core.godot_string_strip_escapes(&self._native))

    def erase(self,godot_int pos,godot_int chars):
        api_core.godot_string_erase(&self._native,pos,chars)

    def ascii(self):
        return api_core.godot_string_ascii(&self._native)

    def ascii_extended(self):
        return api_core.godot_string_ascii_extended(&self._native)

    def utf8(self):
        return api_core.godot_string_utf8(&self._native)

    def chars_to_utf8(char utf8):
        return String.new_static(api_core.godot_string_chars_to_utf8(utf8))

    def chars_to_utf8_with_len(char utf8,godot_int len):
        return String.new_static(api_core.godot_string_chars_to_utf8_with_len(utf8,len))

    def hash(self):
        return api_core.godot_string_hash(&self._native)

    def hash64(self):
        return api_core.godot_string_hash64(&self._native)

    def hash_chars(char cstr):
        return api_core.godot_string_hash_chars(cstr)

    def hash_chars_with_len(char cstr,godot_int len):
        return api_core.godot_string_hash_chars_with_len(cstr,len)

    def md5_buffer(self):
        return api_core.godot_string_md5_buffer(&self._native)

    def md5_text(self):
        return String.new_static(api_core.godot_string_md5_text(&self._native))

    def sha256_buffer(self):
        return api_core.godot_string_sha256_buffer(&self._native)

    def sha256_text(self):
        return String.new_static(api_core.godot_string_sha256_text(&self._native))

    def empty(self):
        return api_core.godot_string_empty(&self._native)

    def get_base_dir(self):
        return String.new_static(api_core.godot_string_get_base_dir(&self._native))

    def get_file(self):
        return String.new_static(api_core.godot_string_get_file(&self._native))

    def humanize_size(size_t size):
        return String.new_static(api_core.godot_string_humanize_size(size))

    def is_abs_path(self):
        return api_core.godot_string_is_abs_path(&self._native)

    def is_rel_path(self):
        return api_core.godot_string_is_rel_path(&self._native)

    def is_resource_file(self):
        return api_core.godot_string_is_resource_file(&self._native)

    def path_to(self,String path):
        return String.new_static(api_core.godot_string_path_to(&self._native,&path._native))

    def path_to_file(self,String path):
        return String.new_static(api_core.godot_string_path_to_file(&self._native,&path._native))

    def simplify_path(self):
        return String.new_static(api_core.godot_string_simplify_path(&self._native))

    def c_escape(self):
        return String.new_static(api_core.godot_string_c_escape(&self._native))

    def c_escape_multiline(self):
        return String.new_static(api_core.godot_string_c_escape_multiline(&self._native))

    def c_unescape(self):
        return String.new_static(api_core.godot_string_c_unescape(&self._native))

    def http_escape(self):
        return String.new_static(api_core.godot_string_http_escape(&self._native))

    def http_unescape(self):
        return String.new_static(api_core.godot_string_http_unescape(&self._native))

    def json_escape(self):
        return String.new_static(api_core.godot_string_json_escape(&self._native))

    def word_wrap(self,godot_int chars_peline):
        return String.new_static(api_core.godot_string_word_wrap(&self._native,chars_peline))

    def xml_escape(self):
        return String.new_static(api_core.godot_string_xml_escape(&self._native))

    def xml_escape_with_quotes(self):
        return String.new_static(api_core.godot_string_xml_escape_with_quotes(&self._native))

    def xml_unescape(self):
        return String.new_static(api_core.godot_string_xml_unescape(&self._native))

    def percent_decode(self):
        return String.new_static(api_core.godot_string_percent_decode(&self._native))

    def percent_encode(self):
        return String.new_static(api_core.godot_string_percent_encode(&self._native))

    def is_valid_float(self):
        return api_core.godot_string_is_valid_float(&self._native)

    def is_valid_hex_number(self,godot_bool with_prefix):
        return api_core.godot_string_is_valid_hex_number(&self._native,with_prefix)

    def is_valid_html_color(self):
        return api_core.godot_string_is_valid_html_color(&self._native)

    def is_valid_identifier(self):
        return api_core.godot_string_is_valid_identifier(&self._native)

    def is_valid_integer(self):
        return api_core.godot_string_is_valid_integer(&self._native)

    def is_valid_ip_address(self):
        return api_core.godot_string_is_valid_ip_address(&self._native)

    def destroy(self):
        api_core.godot_string_destroy(&self._native)

    def as_python_string(self):
        cdef const wchar_t* c_string = api_core.godot_string_wide_str(&self._native)
        return <unicode>PyUnicode_FromWideChar(c_string,-1)

    def __str__(self):
        return self.as_python_string()
