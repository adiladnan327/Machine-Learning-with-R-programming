v<-c(1,2,3)
m<-matrix(1:10,nrow = 2)
df<-mtcars
class(v)
my.list<-list(v,m,df)
my.list
my.named.list<-list(sample_vec=v,matrix=m,sample.df=df)
my.named.list
my.list[1]
my.named.list[1]
my.named.list['sample_vec']
class(my.named.list['sample_vec'])



