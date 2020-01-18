##Get data

bike<-read.csv('bikeshare.csv')

head(bike)


#visualization of temp and count
pl<-ggplot(bike,aes(x=temp,y=count))+ geom_point(aes(color=temp),size=3)

print(pl)

bike$datetime<-as.POSIXct(bike$datetime)

pl2<-ggplot(bike,aes(x=datetime,y=count))+geom_point(aes(color=temp),alpha=0.5)+scale_color_continuous(low='#55D8CE',high='#FF6E2E')+theme_bw()
print(pl2)

cor(bike[,c('temp','count')])


pl3<-ggplot(bike,aes(x=factor(season),y=count))+geom_boxplot(aes(color=factor(season)))+theme_bw()

print(pl3)

#feature engineering

time.stamp<-bike$datetime[4]
format(time.stamp,"%H")

bike$hour<-sapply(bike$datetime,function(x){format(x,"%H")})
head(bike)

pl4<-ggplot(filter(bike,workingday==1),aes(hour,count))+geom_point(position = position_jitter(w=1,h=0),aes(color=temp),alpha=0.5)+theme_bw()
print(pl4)
head(bike)

pl5 <- ggplot(filter(bike,workingday==0),aes(hour,count)) 
pl <- ggplot(filter(bike,workingday==0),aes(hour,count)) 
pl <- pl + geom_point(position=position_jitter(w=1, h=0),aes(color=temp),alpha=0.8)
pl <- pl + scale_color_gradientn(colours = c('dark blue','blue','light blue','light green','yellow','orange','red'))
pl + theme_bw()pl6 <- pl5 + geom_point(position=position_jitter(w=1, h=0),aes(color=temp),alpha=0.8)
pl7 <- pl6 + scale_color_gradientn(colours = c('dark blue','blue','light blue','light green','yellow','orange','red'))+ theme_bw()

print(pl7)



#### model

temp.model<-lm(count~temp,bike)
summary(temp.model)

#How many bike rentals would we predict if the temperature was 25 degrees Celsius?
#method 1
6.0462+9.17*35

#method 2
temp.test<-data.frame(temp=c(35))
predict(temp.model,temp.test)

bike$hour<-sapply(bike$hour,as.numeric)
model <- lm(count ~ . -casual - registered -datetime -atemp,bike )
summary(model)
head(bike)
