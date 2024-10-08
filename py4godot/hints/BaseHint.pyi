class BaseHint(object):
    def __init__(self, hint:int = 0, hint_string:str = "")->BaseHint:pass
    def get_hint(self)->int: pass

    def set_hint(self,value:int): pass

    def get_string(self)->str: pass