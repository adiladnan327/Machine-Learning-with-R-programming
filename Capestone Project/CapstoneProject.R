batting<-read.csv('batting.csv')
print(head(batting$playerID==damonjo01))

str(batting)

print(head(batting$AB))
print(head(batting$X2B))

#Batting Average
batting$BA <- batting$H / batting$AB
print(tail(batting$BA,5))
#OBP
batting$obp<-(batting$H+batting$BB+batting$HBP)/(batting$AB+batting$BB+batting$HBP+batting$SF)
print(tail(batting$obp))
#single B
batting$x1B<-batting$H-batting$X2B-batting$X3B-batting$HR

## Creating Slugging Average (SLG)

batting$SLG<-((1*batting$x1B)+(2*batting$X2B)+(3*batting$X3B)+(4*batting$HR))/batting$AB
str(batting)

sal<-read.csv('salaries.csv')
print(head(sal))
summary(batting)

batting<-subset(batting,yearID>=1985)
summary(batting)


#using merge function
combo<-merge(batting,sal,by=c('playerID','yearID'))
summary(combo)


#Analyzing the lost player
lost_players <- subset(combo,playerID %in% c('giambja01','damonjo01','saenzol01') )

print(lost_players)

lost_players <- lost_players[,c('playerID','H','X2B','X3B','HR','obp','SLG','BA','AB')]
print(head(lost_players))


########## Visualization

library(dplyr)
library(ggplot2)
avail<-filter(combo,yearID==2001)

ggplot(avail,aes(x=obp,y=salary)) + geom_point()
avail.players <- filter(avail,salary<8000000,Obp>0)

avail.players <- filter(avail,AB >= 500)
print(head(avail.players))

possible <- head(arrange(avail.players,desc(obp)),10)
possible<-possible[,c('playerID','obp','AB','salary')]
print(possible)

possible[2:4,]
++