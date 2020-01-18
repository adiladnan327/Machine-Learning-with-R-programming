#student perforamnce data

df<-read.csv('student-mat.csv',sep=';')
print(head(df,5))

print(summary(df))

print(any(is.na(df)))

print(str(df))

library(ggplot2)
library(ggthemes)
library(dplyr)

#correlation
num.cols<-sapply(df, is.numeric)

# filter
cor.data<-cor(df[,num.cols])

print(cor.data)

#corrgram
#corrplot
install.packages('corrgram')
install.packages('corrplot')
library(corrgram)
library(corrplot)

print(corrplot(cor.data,method = "color"))

print(corrgram(df))
help("corrgram")
print(corrgram(df,order=TRUE,lower.panel = panel.shade,upper.panel = panel.pie,text.panel = panel.txt)

print(ggplot(df,aes(x=G3))+geom_histogram(bins=10,alpha=0.5,fill='blue'))

#Split data into train and test set
#install.packages('caTools')

# run model
#interpret the model

install.packages('caTools')

library(caTools)
#set a seed
set.seed(101)
#split up sample

sample<-sample.split(df$G3,SplitRatio = 0.7)

# 70% data is train data
train<-subset(df,sample==T)
# 3-% data is test data
test<- subset(df,sample==FALSE)

model<-lm(G3~.,data=train)
g3.predict<-predict(model,test)

results<-cbind(g3.predict,test$G3)
colnames(results)<-data.frame('pred','test')

#own tester
model<-lm(G3~famrel,data=train)
test<-data.frame(famrel=c(35))
predict(model,test)

print(head(results))


## the general model of building a linear regression model in R
# looks like this:

#model<-lm(y ~x1+x2,data)
#model<-lm(y~.,data) #uses for all features

## train and build the model
model<-lm(G3~,data=train)

print(summary(model))

res<-residuals(model)

class(res)
res<-as.data.frame(res)
head(res)

print(ggplot(res,aes(res))+geom_histogram(fill='blue',alpha=0.5))

plot(model)

plot(model)

G3.predictions<-predict(model,test)

results<-cbind(G3.predictions,test$G3)
colnames(results)<-c('pred','real')
results<-as.data.frame(results)
print(head(results))
#take care of negative values
to_zero<- function(x){
  if(x<0){
    return(0)
  }else{
    return(x)
  }
}

results$pred<-sapply(results$pred,to_zero)

#Mean Square Error

mse<-mean((results$real- results$pred)^2)
print('mse')
print(mse)

#print Rmse
print("squared root of mse")

print(mse^0.5)

##sum of the square error
sse<-sum( (results$pred-results$real)^2)
sst<-sum( (mean(df$G3)-results$real)^2)
r2<-1-sse/sst
print(r2)


