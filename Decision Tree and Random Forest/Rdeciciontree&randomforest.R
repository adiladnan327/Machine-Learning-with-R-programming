install.packages('rpart')

library(rpart)

help(rpart)

str(kyphosis)

print(head(kyphosis))

tree<-rpart(Kyphosis~.,method = 'class',data=kyphosis)

printcp(tree)

plot(tree,uniform = T,main='kyphosis tree')
text(tree,use.n = ,all=T)

install.packages('rpart.plot')
library(rpart.plot)

prp(tree)


################
###############
#############
############# RANDOM FOREST

install.packages('randomForest')
library(randomForest)
rf.model<- randomForest(Kyphosis~.,data = kyphosis)
print(rf.model)
rf.model$predicted
rf.model$confusion
rf.model$proximity
