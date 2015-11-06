#!/usr/bin/env python
#coding: utf8
symbols = ' {}$+()"=!.?\% '
D = str.maketrans('','', symbols)
with open('Desktop/newpython/tweets.txt', 'a', encoding = 'utf8') as t, open('Desktop/newpython/tweets.txt', 'r', encoding='utf8') as n:
	for line in n:
         	t.write(line.translate(D))


