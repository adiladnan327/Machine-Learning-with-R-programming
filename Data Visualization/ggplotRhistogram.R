# install.packages('ggplot2')
# install.packages('ggplot2movies')
library(ggplot2)
library(ggplot2movies)


# Data & Aesthetics
pl<-ggplot(movies,aes(x=rating))

#geometry
pl2<-pl+geom_histogram(binwidth = 0.1,color='red',fill='pink',alpha=0.4)
#Binwidth---> 
pl2<-pl+geom_histogram(binwidth = 0.1,aes(fill=..count..))
#alpha->tansperancy of the color

pl3 <- pl2 + xlab('Movie Rating') + ylab('Count')
print(pl3 + ggtitle("My Title"))


