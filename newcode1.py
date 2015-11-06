#!/usr/bin/env python
import string
import io 
import sys
import fileinput
import re
f1= open("Desktop/newpython/tweets.txt", 'r') # in file
f2 = open("Desktop/newpython/file3.txt", 'w') # out file
for line in f1:
        f2.write(line.replace('\/', ' /'))
f1.close()
f2.close()
f3= open("Desktop/newpython/file3.txt", 'r') # in file4
fnew=f3.readlines()
data1= filter(lambda x: x in string.printable, fnew)
print data1
