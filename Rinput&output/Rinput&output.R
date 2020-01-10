#CSV files

write.csv(mtcars,file='example.csv')
df<- read.csv('example.csv')
print(df)

#Excel files
install.packages("readxl")

excel_sheets('roomvo.xlsx')
df<-read_excel('roomvo.xlsx',sheet="Sheet1")
entire.workbook<-lapply()

#Writing excel
install.packages(xlsx)
library(xlsx)
write.xlsx(mtcars,"output_example.xlsx")

#SQL with R Programming
install.packages("RODBC")
library(RODBC)
myconn<-odbcConnect("Database_name",uid="User_id",pwd='password')
dat<-sqlFetch(myconn,"Table_name")
querydat<-sqlQuery(myconn,"select * from table")
close(myconn)

install.packages("RMySQL")
install.packages("ROracle")

#Webscraping with R
library(rvest)
demo(package = 'rvest')

