#question 1
name<-c('sam','frank','amy')
age<-c(22,25,26)
weight<-c(150,165,120)
sex<-c('M','M','F')
df2<-data.frame(name,age,weight,sex)
df2

#question 2
is.data.frame(mtcars)

#question 3
mat <- matrix(1:25,byrow = T,nrow = 5)
df4<-data.frame(mat)
df4

#question 4
df<-data.frame(mtcars)
df

#question 5
head(df,6)

#question 6
mean(df$mpg)
mean(df[,1])
mean(df[,'mpg'])

#Question 7
df[df$cyl==6,]
df[df[,'cyl']==6,]

#question 8
df[,9:11]

#question 9
df[,'perfomrance']<-df$hp/df$wt

#question 10

mean(df$mpg[df$hp>100 & df$wt>2.5])

#question 11

df[5,'mpg']

