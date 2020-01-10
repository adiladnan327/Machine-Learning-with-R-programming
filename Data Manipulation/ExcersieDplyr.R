library(dplyr)
head(mtcars)
#question 1
df<-mtcars
result<-filter(df,mpg>20,cyl==6)
print(result)

#question 2
result<-arrange(df,cyl)
head(print(result))

#question3
result<-select(df,mpg,hp)
head(print(result))

#question 4
result<-distinct(df,gear)
head(print(result))

#question 5
result<-transmute(df,performance=hp/wt)
head(print(result))

#question 6
result<-summarise(df,mean(mpg))
print(result)

#question 7
result<-df%>% filter(cyl==6) %>% summarise(mean(hp)) 
print(result)