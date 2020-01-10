
days<-c('mon','tues','wed','thrus','fri')
temp<-c(22.2,21,23,24.3,25)
rain<-c(T,T,F,F,T)

df<-data.frame(days,temp,rain)


#when you want to select the rain when the rain is only true
subset(df,subset=rain==T)

#when you to select the rows and column when the temperature is more than 23
subset(df,subset = temp>23)

#when you want to sort the order of columns and rows in temparature
#In acsending order (small to high)
sorted.temp<-order(df['temp'])

#sorting the rows and columns in acsending order
df[sorted.temp,]

#sorting the rows and columns in descending order
desc.temp<-order(-df['temp'])
desc.temp
df[desc.temp,]

#sorting the rows and columns in descending order (in other ways)
desc.temp2<-order(-df$temp)
desc.temp2
df[desc.temp2,]