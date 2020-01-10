#bUILT in features and functions
#seq(): create sequence
seq(0,10,by=2)
seq(10,100,by = 10)
#sort(): sort a vector
v<-c(1,4,3,9,6,12,63)
sort(v)----->#for acsending order
sort(v,decreasing = FALSE)----->#for descending order
#rev(): reverse the elements
v<-1:10
rev(v)
#str():show the structure of an object
str(v)
str(mtcars)
summary(mtcars)
#append(): merge objects together (works on vectors and lists)
v<-1:10
v2<-35:40
append(v,v2)
#checking data type #is
is.vector(v)
#coverting the data type
as.list(v)



