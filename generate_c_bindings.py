import re

with open("godot_api/output.preprocessed.c", "r") as f:
    count = 0
    string = ""

    erg = ""
    read = "test"
    while(read):
        read = f.readline()
        string += read
        if(";" in string):
            s = string.replace("typedef", "ctypedef").replace(";", "")
            erg += s
            string = ""
        count += 1


    s_temp = ""
    open_ = False
    print(erg)
    for read in erg:
        if("{" in read or open_):
            open_ = True
            s_temp +=read
        if("}" in read and open_):
            open_ = False
            #print("####################################\n"+s_temp+"\n##############################")
            #print(re.match("(\w+)\{\w*\}\w*", read))



            s_temp = ""

