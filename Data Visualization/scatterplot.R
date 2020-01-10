library(ggplot2)
df<-mtcars
#Data and Asthetics
pl<-ggplot(df,aes(x=wt,y=mpg))

#Geometry
print(pl+geom_point(size=5,color='blue'))
pl2<-pl+geom_point(aes(color=hp),size=5)
pl3<-pl2+scale_color_gradient(low='blue',high='red')
print(pl3)

#if you want to givw the size to the column of the dataset so it will read the data as sequence to the asthetic
print(pl+geom_point(aes(size=vs)))
print(pl+geom_point(aes(shape=factor(vs)),size=5))