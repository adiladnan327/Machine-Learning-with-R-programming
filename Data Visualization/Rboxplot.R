library(ggplot2)
df<-mtcars


#data and asthetics
pl<-ggplot(df,aes(x=factor(cyl),y=mpg))

print(pl+geom_boxplot()+coord_flip())

print(pl+geom_boxplot(aes(fill=factor(cyl)))+theme_dark())
#used in stock information to plot the data




