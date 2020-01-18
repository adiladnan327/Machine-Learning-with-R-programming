install.packages('tm',repos='http://cran.us.r-project.org')
install.packages('twitteR',repos='http://cran.us.r-project.org')
install.packages('wordcloud',repos='http://cran.us.r-project.org')
install.packages('RColorBrewer',repos='http://cran.us.r-project.org')
#install.packages('e1017',repos='http://cran.us.r-project.org')
#install.packages('class',repos='http://cran.us.r-project.org')

library(tm)
library(twitteR)
library(wordcloud)
library(RColorBrewer)
ckey
ckey<- c('ykvRgxS3bJHE0n5NiLkkLDggY')
skey<-c('6cRfDx8mD7XsOino2kVvYnOR4V6Fv0KXlfrtcOO8BOmYdQ4R1M')
token<-c(' 1218087517653696513-3I7iLI4qhCeom59GzfwgyHxIsWNqqp')
sectoken<-c('WhgHoViF5ooBgtAw6EKBXuNsXoQQ9bTeUCuzwEfAjL2bk')


# Connect to twitter

setup_twitter_oauth(ckey,skey,access_token=NULL, access_secret=NULL)
##
soccer.tweets<-searchTwitter('Python',n=1000,lang = 'en')
###
soccer.text<-sapply(soccer.tweets, function(x) x$getText())

##clean text data

soccer.text<-iconv(soccer.text,'UTF-8','ASCII')

soccer.corpus<- Corpus(VectorSource(soccer.text))


term.doc.matrix <- TermDocumentMatrix(soccer.corpus,
                                      control = list(removePunctuation = TRUE,
                                                     stopwords = c("Python","http", stopwords("english")),
                                                     removeNumbers = TRUE,tolower = TRUE))
head(term.doc.matrix)
term.doc.matrix <- as.matrix(term.doc.matrix)


word.freqs <- sort(rowSums(term.doc.matrix), decreasing=TRUE) 
dm <- data.frame(word=names(word.freqs), freq=word.freqs)

wordcloud(dm$word, dm$freq, random.order=FALSE, colors=brewer.pal(8, "Dark2"))

