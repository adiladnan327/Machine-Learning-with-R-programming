#install.packages('data.table')
#install.packages('tidyr')

#gather()

comp<-c(1,1,1,2,2,2,3,3,3)
yr<-c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1<-runif(9,min=0,max=100)
q2<-runif(9,min=0,max=100)
q3<-runif(9,min=0,max=100)
q4<-runif(9,min=0,max=100)

df<-data.frame(comp=comp,year=yr,Qtr1=q1,Qtr2=q2,Qtr3=q3,Qtr4=q4)

gather(df,Quater,Revenue,Qtr1:Qtr4)


stock<-data.frame(time=as.Date('2009-01-01')+0:9,
                  X=rnorm(10,0,1),
                  Y=rnorm(10,0,2),
                  Z=rnorm(10,0,4)
                  )
stock
gather(df,Quater,Revenue,Qtr1:Qtr4)
stock.gathered<-stock %>% gather(stock,price,X,Y,Z)
spread(stock.gathered,time,price)

df<-data.frame(new.col=c(NA,"a.x","b.y","c.z"))
result<-separate(df,new.col,c('ABC','XYZ'))
print(result)

df<-data.frame(new.col=c(NA,"a-x","b-y","c-z"))
result<-separate(df,new.col,c('ABC','XYZ'))
print(result)

separate(df,new.col,c('ABC','XYZ'),sep = '-')

unite(df.sep,new.joined.col,abc,xyz,sep = '---')