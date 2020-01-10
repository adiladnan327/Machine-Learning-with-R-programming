#exercises

library(ggplot2)
library(ggthemes)
head(mpg)

#question 1
#data and asthetic
pl<-ggplot(mpg,aes(x=hwy))
#geomtry
pl2<-pl+geom_bar(fill='pink')
print(pl2)

#question 2
pl<-ggplot(mpg,aes(x=manufacturer))

pl2<-pl+geom_bar(aes(fill=cyl))
print(pl2)

#question 3

head(txhousing)

pl<-ggplot(txhousing,aes(x=sales,y=volume))

pl2<-pl+geom_point(color='blue')

pl3<-pl2+geom_smooth(color='red')

print(pl3)
#question 4

