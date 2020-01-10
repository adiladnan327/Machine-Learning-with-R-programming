library(ggplot2)

df<-mtcars
#data and asthetics

pl <- ggplot(df,aes(x=mpg,y=wt))

#geometry

pl2<-pl+geom_point(binwidth = 0.1,color='red',alpha=0.4)
pl3<-pl2+scalar_color_gradient(low='blue',high='red')
print(pl3)
