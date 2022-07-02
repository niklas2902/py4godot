from py4godot.core.string_name.StringName import *
from py4godot.core.array.Array import *
from py4godot.core.variant.Variant import *
from py4godot.core.pool_array.PoolArrays import *
class String:
    def __init__(self)->None:pass
    def new_copy(r_dest:String, src:String)->None:pass
    def operator_index(self, idx:int)->str:pass
    def operator_index_const(self, idx:int)->str:pass
    def wide_str(self)->str:pass
    def operator_equal(self, b:String)->bool:pass
    def operator_less(self, b:String)->bool:pass
    def operator_plus(self, b:String)->str:pass
    def length(self)->int:pass
    def casecmp_to(self, str:String)->int:pass
    def nocasecmp_to(self, str:String)->int:pass
    def naturalnocasecmp_to(self, str:String)->int:pass
    def begins_with(self, string:String)->bool:pass
    def bigrams(self)->Array:pass
    def ends_with(self, string:String)->bool:pass
    def find(self, what:str)->int:pass
    def find_from(self, what:str, from_:int)->int:pass
    def findmk(self, keys:Array)->int:pass
    def findmk_from(self, keys:Array, from_:int)->int:pass
    def findmk_from_in_place(self, keys:Array, from_:int, key:int)->int:pass
    def findn(self, what:str)->int:pass
    def findn_from(self, what:str, from_:int)->int:pass
    def find_last(self, what:str)->int:pass
    def format(self, values:Variant)->str:pass
    def format_with_custom_placeholder(self, values:Variant, placeholder:str)->str:pass
    def hex_to_int(self)->int:pass
    def hex_to_int_without_prefix(self)->int:pass
    def insert(self, at_pos:int, string:str)->str:pass
    def is_numeric(self)->bool:pass
    def is_subsequence_of(self, string:String)->bool:pass
    def is_subsequence_ofi(self, string:String)->bool:pass
    def lpad(self, min_length:int)->str:pass
    def lpad_with_custom_character(self, min_length:int, character:String)->str:pass
    def match(self, wildcard:String)->bool:pass
    def matchn(self, wildcard:String)->bool:pass
    def pad_decimals(self, digits:int)->str:pass
    def pad_zeros(self, digits:int)->str:pass
    def replace_first(self, key:str, with_:str)->str:pass
    def replace(self, key:str, with_:str)->str:pass
    def replacen(self, key:str, with_:str)->str:pass
    def rfind(self, what:str)->int:pass
    def rfindn(self, what:str)->int:pass
    def rfind_from(self, what:str, from_:int)->int:pass
    def rfindn_from(self, what:str, from_:int)->int:pass
    def rpad(self, min_length:int)->str:pass
    def rpad_with_custom_character(self, min_length:int, character:String)->str:pass
    def similarity(self, string:String)->float:pass
    def sprintf(self, values:Array, error:bool)->str:pass
    def substr(self, from_:int, chars:int)->str:pass
    def to_double(self)->float:pass
    def to_float(self)->float:pass
    def to_int(self)->int:pass
    def camelcase_to_underscore(self)->str:pass
    def camelcase_to_underscore_lowercased(self)->str:pass
    def capitalize(self)->str:pass
    def hex_to_int64(self)->int:pass
    def hex_to_int64_with_prefix(self)->int:pass
    def to_int64(self)->int:pass
    def get_slice_count(self, splitter:str)->int:pass
    def get_slice(self, splitter:str, slice:int)->str:pass
    def get_slicec(self, splitter:str, slice:int)->str:pass
    def split(self, splitter:String)->Array:pass
    def split_allow_empty(self, splitter:String)->Array:pass
    def split_floats(self, splitter:String)->Array:pass
    def split_floats_allows_empty(self, splitter:String)->Array:pass
    def split_floats_mk(self, splitters:Array)->Array:pass
    def split_floats_mk_allows_empty(self, splitters:Array)->Array:pass
    def split_ints(self, splitter:String)->Array:pass
    def split_ints_allows_empty(self, splitter:String)->Array:pass
    def split_ints_mk(self, splitters:Array)->Array:pass
    def split_ints_mk_allows_empty(self, *splitters:Array)->Array:pass
    def split_spaces(self)->Array:pass
    def to_lower(self)->str:pass
    def to_upper(self)->str:pass
    def get_basename(self)->str:pass
    def get_extension(self)->str:pass
    def left(self, pos:int)->str:pass
    def ord_at(self, idx:int)->str:pass
    def plus_file(self, file:String)->str:pass
    def right(self, pos:int)->str:pass
    def strip_edges(self, left:bool, right:bool)->str:pass
    def strip_escapes(self)->str:pass
    def erase(self, pos:int, chars:int)->None:pass
    def ascii(self)->str:pass
    def ascii_extended(self)->str:pass
    def utf8(self)->str:pass
    def parse_utf8(self, utf8:str)->bool:pass
    def parse_utf8_with_len(self, utf8:str, len:int)->bool:pass
    def hash(self)->int:pass
    def hash64(self)->int:pass
    def md5_buffer(self)->PoolByteArray:pass
    def md5_text(self)->str:pass
    def sha256_buffer(self)->PoolByteArray:pass
    def sha256_text(self)->str:pass
    def empty(self)->bool:pass
    def get_base_dir(self)->str:pass
    def get_file(self)->str:pass
    def is_abs_path(self)->bool:pass
    def is_rel_path(self)->bool:pass
    def is_resource_file(self)->bool:pass
    def path_to(self, path:String)->str:pass
    def path_to_file(self, path:String)->str:pass
    def simplify_path(self)->str:pass
    def c_escape(self)->str:pass
    def c_escape_multiline(self)->str:pass
    def c_unescape(self)->str:pass
    def http_escape(self)->str:pass
    def http_unescape(self)->str:pass
    def json_escape(self)->str:pass
    def word_wrap(self, chars_per_line:int)->str:pass
    def xml_escape(self)->str:pass
    def xml_escape_with_quotes(self)->str:pass
    def xml_unescape(self)->str:pass
    def percent_decode(self)->str:pass
    def percent_encode(self)->str:pass
    def is_valid_float(self)->bool:pass
    def is_valid_hex_number(self, with_prefix:bool)->bool:pass
    def is_valid_html_color(self)->bool:pass
    def is_valid_identifier(self)->bool:pass
    def is_valid_integer(self)->bool:pass
    def is_valid_ip_address(self)->bool:pass
    def destroy(self)->None:pass
    def name_new(*r_dest:StringName, name:String)->None:pass
    def name_new_data(*r_dest:StringName, *name:char)->None:pass
    def name_get_name(self)->str:pass
    def name_get_hash(self)->int:pass
    def name_get_data_unique_pointer(self)->const:pass
    def name_operator_equal(self, *other:StringName)->bool:pass
    def name_operator_less(self, *other:StringName)->bool:pass
    def name_destroy(self)->None:pass
