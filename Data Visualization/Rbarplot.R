library(ggplot2)
df<-mpg
df
pl<- ggplot(df,aes(x=class))

print(pl+geom_bar(aes(fill=drv)))


library(ggplot2)
df<-mpg
df
pl<- ggplot(df,aes(x=manufacturer))

print(pl+geom_bar(aes(fill=cyl)))
