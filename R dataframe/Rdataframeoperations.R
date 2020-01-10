#creating Data Frames
c1<-1:10
c2<-letters[1:10]
df<-data.frame(c1,c2)
df<-data.frame(col.name.1=c1,col.name.2=c2)
df

#Importing and Exporting Data
write.csv(df,file='saved_df.csv')
df2<-read.csv('saved_df.csv')
df2

#Getting Information about Data Frame
nrow(df)
ncol
colnames(df)
row.names(df)
str(df)
summary(df)

#Referecing cells
df[[5,2]]
df[[5,'col.name.2']]
df[[2,'col.name.1']]<-9999

#Referencing rows
df[1,]

#Referencing columns
df[,1]
df3<-data.frame(mtcars)
df3
df3[2,]
head(df3)
tail(df3)
df3$disp
df3[,'disp']
df3[['disp']]
head(df3[c('mpg','disp')])

#Adding Rows and columns
df2<-data.frame(col.name.1=2000,col.name.2='new')
df2
dfnew<-rbind(df,df2)
dfnew
df
df$newcol<-2*df$col.name.1
df
df$newcol.copy<-df$newcol
head(df)
df[,'newcol.copy2']<-df$col.name.2
df

#setting columns names
colnames(df)
colnames(df)<-c('1','2','3','4','5')
colnames(df)[1]<-'NEW COL NAMES'
head(df)


#selecting the multiple rows
df[1:10,]
df[1:3,]
head(df,7)
df[-2,]

#conditionally selecting the rows

df3[df3$mpg>20 & (df3$cyl==6),]
df3[df3$mpg>20& (df3$cyl==6),c('mpg','cyl','hp')]
subset(df3,mpg>20& cyl==6)

#selecting multiple columns
df3[,1:2]
df3[,c('mpg')]

#Dealing with missing data
is.na(df3)
any(is.na(df3))
any(is.na(df3))
df3[is.na(df3$mpg)]<-mean(df3$mpg)