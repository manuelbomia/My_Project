#!/usr/bin/env python
#coding: utf8
import string
import io 
import sys
import fileinput
import re


f2=open('Desktop/newpython/fta.txt','w') # in file
f1=open('Desktop/newpython/tweets.txt','r') # out file
for line in f1:
    if line.strip() == '': continue  # strip() removes leading and trailing spaces
    rline = re.sub(r'[-{}&+@"=!.?|»©><«,_+;%$[\]*\\^`~]','',line).strip()
    if rline == '': continue # skip empty lines
    f2.write(rline+'\n')
f2.close()
f1.close()

f3= open("Desktop/newpython/fta.txt", 'r') # in file
f4 = open("Desktop/newpython/ftb.txt", 'w') # out file
for line in f3:
        f4.write(line.replace('\/', '/'))
f3.close()
f4.close()


f5= open("Desktop/newpython/ftb.txt", 'r') # in file
f6 = open("Desktop/newpython/ftc.txt", 'w') # out file
for line in f5:
        f6.write(line.replace('\\', '\ ' ))
f5.close()
f6.close()

f7= open("Desktop/newpython/ftc.txt", 'r') # in file
f8 = open("Desktop/newpython/ftd.txt", 'w') # out file
for line in f7:
        f8.write(line.replace('\' ', ' '))
f7.close()
f8.close()










