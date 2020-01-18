############Neural Nets
install.packages('MASS')
library(MASS)
head(Boston)
str(Boston)
any(is.na(Boston))

data<-Boston

##### Normalise our data

maxs<-apply(data,2,max)
print(maxs)

mins<-apply(data,2,min)
print(mins)

###### Scaling data

help("scale")
#### scaling
scale.data<-scale(data,center = mins,scale=maxs-mins)
scaled<-as.data.frame(scale.data)
print(scale.data)
head(scaled)

head(Boston)

############ splitting the data 
library(caTools)
split<-sample.split(scaled$medv,SplitRatio = 0.7)
train<- subset(scaled,split==T)
test<-subset(scaled,split==F)
head(train)
 
###### installing neuralnets
install.packages('neuralnet')
library(neuralnet)
n<-names(train)

###### making formula

f<- as.formula(paste("medv ~", paste(n[!n %in% "medv"],collapse = " + ")))
print(f)

nn<-neuralnet(f,data=train,hidden = c(5,3),linear.output = TRUE)

plot(nn)

predicted.nn.values<-compute(nn,test[1:13])
str(predicted.nn.values)

true.predictions<-predicted.nn.values$net.result*(max(data$medv)-min(data$medv))+min(data$medv)

## convert the test data

test.r<-(test$medv)*(max(data$medv)-min(data$medv))+min(data$medv)


MSE.nn<- sum((test.r - true.predictions)^2)/nrow(test)
print(MSE.nn)


error.df<-data.frame(test.r,true.predictions)
head(error.df)


library(ggplot2)

pl<-ggplot(error.df,aes(x=test.r,y=true.predictions))+geom_point() + stat_smooth()
print(pl)
