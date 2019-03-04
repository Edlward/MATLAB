import os
import sys

def readData(fileId):
    """Extract the data from the txt-type file

    Warnnng: the data in the file should be placed like this: 2..3..4 (two blank is needed)

    Args: fileId: the path of the file, Type: str

    return some list include the data"""
    file = open(fileId)
    var1 = []
    var2 = []
    var3 = []
    while(1):
        line = file.readline()
        if not line:
            if var3 != []:
                return var1, var2, var3
            elif var2 != []:
                return var1, var2
            elif var1 != []:
                return var1
            else: 
                return []        
        line = line.strip()
        str_list = line.split("  ")
        if len(str_list) == 3:
            var1.append(float(str_list[0]))
            var2.append(float(str_list[1]))
            var3.append(float(str_list[2]))
        elif len(str_list) == 2:
            var1.append(float(str_list[0]))
            var2.append(float(str_list[1]))
        elif len(str_list) == 1:
            var1.append(float(str_list[0]))
        else:
            break
        if not line:
            if len(str_list) == 3:
                return var1, var2, var3
            elif len(str_list) == 2:
                return var1, var2
            elif len(str_list) == 1:
                return var1
            else: 
                return []

fileID = "E:\output.txt"
ia, ib, ic = readData(fileID)
print(ia)
print(ib)
print(ic)

