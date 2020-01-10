#matrix function

matrix(v)
matrix(v,nrow = 2)
matrix(1:12,byrow = FALSE,nrow = 4)

matrix(1:12,byrow = T,nrow = 4)

#examplestockmatrix

goog<-c(450,451,452,445,468)
msft<-c(230,231,232,233,220)

stocks<-c(goog,msft)

stocks.matrix<-matrix(stocks,byrow = T,nrow = 2)

#print(stocks.matrix)

days<-c('Mon','Tues','Wed','Thrus','Fri')

st.names<-c('goog','msft')

colnames(stocks.matrix)<-days
rownames(stocks.matrix)<-st.names

print(stocks.matrix)

rowsum(stocks.matrix)

colSums(stocks.matrix)

rowMeans(stocks.matrix)

Fb<- c(111,112,113,120,114)

tech.stocks<-rbind(stocks.matrix,Fb)

print(tech.stocks)

avg<-rowMeans(tech.stocks)

tech.stocks<-cbind(tech.stocks,avg)

print(tech.stocks)
