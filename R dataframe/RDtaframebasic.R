days<-c('mon','tues','wed','thru','fri')
temp<-c(22.2,21,23,24.3,25)
rain<-c(T,T,F,F,T)

df<-data.frame(days,temp,rain)
str(df)
summary(df)


