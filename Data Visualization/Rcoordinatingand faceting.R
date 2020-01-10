library(ggplot2)

pl<-ggplot(mpg,aes(x=displ,y=hwy))+geom_point()
pl2<-pl+coord_cartesian(xlim = c(1,4),ylim = c(15,30))
pl2<-pl+coord_fixed(ratio = 1/3)
pl2<-pl+geom_hex()
print(pl2+scale_fill_gradient(low='red',high = 'blue'))
###########################################################
pl<- ggplot(movies,aes(x=year,y=rating))
pl2<-pl+geom_hex()
print(pl2+scale_fill_gradient(low='red',high = 'blue'))
###########################################################
pl<- ggplot(movies,aes(x=year,y=rating))
pl2<-pl+geom_hex()
print(pl2+scale_fill_gradient(low='red',high = 'blue'))
print(pl+facet_grid(. ~ cyl))

print(pl+facet_grid(drv ~ cyl))
print(pl2)




