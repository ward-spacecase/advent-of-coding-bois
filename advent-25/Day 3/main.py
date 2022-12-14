from values import *

import string

file = open("data.txt", "r")
lines = file.readlines()

lower = string.ascii_lowercase
upper = string.ascii_uppercase

for line in lines: 
    first_half = slice(0,len(line)//2)
    second_half = slice(len(line)//2, len(line))
    for fl in line[first_half]:
        if fl in line[second_half]:
            print(fl)
