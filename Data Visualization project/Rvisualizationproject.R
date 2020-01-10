library(ggplot2)
library(ggthemes)
library(data.table)
df<-fread('Economist_Assignment_Data.csv',drop=1)
print(head(df))

#data and asthetics
pl<-ggplot(df,aes(x=CPI,y=HDI,color=Region)) + geom_point(size=4,shape=1)

#geometry
pl2<-pl+geom_smooth(aes(group=1),method = 'lm',formula = y~log(x),se=F,color='red')

pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")

pl3 <- pl2 + geom_text(aes(label = Country), color = "gray20", 
                       data = subset(df, Country %in% pointsToLabel),check_overlap = TRUE)





pl4<-pl3+scale_x_continuous(limits = c(.9,10.5),breaks = 1:10)

pl5<-pl4+ggtitle('Corruption and Human Development')
print(pl5+ theme_economist_white())


