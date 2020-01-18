install.packages('ISLR')
library(ISLR)


library(ggplot2)
pl<- ggplot(iris,aes(Petal.Length,Petal.Width,color=Species))
print(pl+geom_point(size=4))

set.seed(101)

iriscluster<-kmeans(iris[,1:4],3,nstart = 20)

print(iriscluster)

table(iriscluster$cluster,iris$Species)

install.packages('cluster')

library(cluster)

clusplot(iris,iriscluster$cluster,color=T,labels = 0,lines = 0)
