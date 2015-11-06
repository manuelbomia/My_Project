#!/usr/bin/env python
#coding: utf8
import string
import io 
import sys
import fileinput
import re
import json
import math
import matplotlib.pyplot as plt
import operator
import re
import networkx as nx
import re, mmap, os
import sys


#In this module, all regex expressions that forms the bulk of unicode characters are replaced in tweets.txt
# strip() in line 4 of this module spaces
f2=open('Desktop/newpython/fta.txt','w') # in file
f1=open('Desktop/newpython/tweets.txt','r') # out file
for line in f1:
    if line.strip().split(',') == '': continue  
    rline = re.sub(r'[-{}£[:;=8] ª¤¥&+@"¦=§¨![<>]?.®[:;=8] ?|¢[\)\]\(\[dDpP/\:\}\{@\|\\] ¸º»©°>¬<·«±,_+²³;%¶$[\]µ*\\^`~[<>]?[:;=8]]','',line).strip()
    if rline == '': continue 
    f2.write(rline+'\n')
f2.close()
f1.close()

#In this  module, \/ is replaced with / according to the FAQ document
f3= open('Desktop/newpython/fta.txt', 'r') # in file
f4 = open('Desktop/newpython/ftb.txt', 'w') # out file
for line in f3:
        f4.write(line.replace('\/', '/'))
f3.close()
f4.close()

#In this  module, \" is replaced with according to the FAQ document
f5= open('Desktop/newpython/ftb.txt', 'r') # in file
f6 = open('Desktop/newpython/ftc.txt', 'w') # out file
for line in f5:
        f6.write(line.replace('\"', '"' ))
f5.close()
f6.close()

#In this  module, \" is replaced with according to the FAQ document
f7= open('Desktop/newpython/ftc.txt', 'r') # in file
f8 = open('Desktop/newpython/ft1.txt', 'w') # out file
for line in f7:
        f8.write(line.replace('\t', ' ' ))
f7.close()
f8.close()

#now to convert back into standard json file
tweets = []
for line in open('Desktop/newpython/tweets.txt', 'r'):
  try:
    tweets.append(json.loads(line))
  except:
     pass

#trying to create ID list
for tweet in tweets:
 if tweet['entities']['user_mentions']:
    print tweet['entities']['user_mentions']
    break

#tMining Tweet Texts
texts = []
for tweet in tweets:
  if 'text' in tweet:
    texts.append(tweet['text'])
times = [tweet['text']for tweet in tweets if 'text' in tweet]
print(tweet['text'])

#Mining Tweet Time 
times = []
for tweet in tweets:
  if 'created_at' in tweet:
    times.append(tweet['created_at'])
times = [tweet['created_at']for tweet in tweets if 'created_at' in tweet]
print(tweet['created_at'])


#Mining Hashtags
hashtags= []
for tweet in tweets:
  if 'entities' in tweet:
    hashtags.append(tweet['entities'])
hashtags = [tweet['entities']for tweet in tweets if 'entities' in tweet]
print(tweet['entities'])
  

for tweet in tweets:
 if tweet['entities']['user_mentions']:
    print tweet['entities']['user_mentions']
    break

#Here, attemp is made to construct ft2 file
for tweet in tweets:
 if tweet['entities']['hashtags']:
    print tweet['entities']['hashtags']
    break

def extract_hashtags(s):
     return set(part[1:] for part in s.split() if part.startswith('#'))
     extract_hashtags('Desktop/newpython/tweets.txt')
set(['Trump', 'Election', 'News', 'KayKay121', 'esrahesham55', 'KK_Rakitla95', 'Esraa Hesham'])


for tweet in tweets:
 if tweet['entities']['user_mentions']:
    f = open('Desktop/newpython/ft2.txt', 'w')
    sys.stdout = f
    print tweet['entities']['user_mentions']
    break

#Here, attemp is made to construct ft2 file
for tweet in tweets:
 if tweet['entities']['hashtags']:
    fa = open('Desktop/newpython/ft2.txt', 'ra')
    fb = open('Desktop/newpython/ft2.txt', 'w')
    sys.stdout= fb
    print tweet['entities']['hashtags']
    break



f.close()
fa.close()
fb.close()







