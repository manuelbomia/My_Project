#!/usr/bin/env python
f= open("Desktop/newpython/tweetss.txt", "r")
file_list = f.readlines()
first_set_of_line= file_list # to be included in ft1.txt
second_set_of_line = file_list[20:25] # to be included in ft2.txt
#This module creat a new ft1.txt 
import string
#file=open("ft1.txt", "w")
#file.close()
#data1=open("Desktop/newpython/tweets.txt", "w")
data1=first_set_of_line
print len(data1)
data2= data1.replace('\/','/')
print len(data2)


#data2=filter(lambda x: x in 32 <= ord() <= 126, data1)




#This module creat a new ft2.txt 
#file=open("ft2.txt", "w")
#file.close()
#data2=open("C:/newpython/tweet_output/ft2.txt", "w")
#data2=second_set_of_line
#print data2
