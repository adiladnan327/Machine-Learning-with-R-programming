# 2 variable plotting

library(ggplot2)
library(ggplot2movies)

pl<- ggplot(movies,aes(x=year,y=rating))
pl2<-pl+geom_bin2d(binwidth=c(3,1))

pl3<-pl2+scale_fill_gradient(high='red',low='green')

print(pl3)

#hexagon printing
pl<- ggplot(movies,aes(x=year,y=rating))
pl2<-pl+geom_hex()
print(pl2+scale_fill_gradient(low='red',high = 'blue'))

#density2d
pl<- ggplot(movies,aes(x=year,y=rating))
pl2<-pl+geom_density2d()
print(pl2)






