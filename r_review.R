count.raw<-read.delim("/Users/siddisis/Desktop/SWC/altmetrics/data/counts-raw.txt.gz")
count.norm<-read.delim("/Users/siddisis/Desktop/SWC/altmetrics/data/counts-norm.txt.gz")
count.raw[1:3,10:12]
count.raw$pmid[1:3]
head(count.raw$daysSincePublished)/c(7,1)
str(count.raw$journal)
levels(count.raw$journal)
anyNA(count.raw$authorsCount[1:10])
summary(count.raw$wosCountThru2011)
hist(count.raw$wosCountThru2011, xlim=c(0,200), breaks=1000)
hist(sqrt(count.raw$wosCountThru2011))
smoothScatter(count.raw$f1000Factor, log(count.raw$wosCountThru2011))
smoothScatter(count.raw$authorsCount, log(count.raw$wosCountThru2011))

smoothScatter(count.raw$authorsCount, count.raw$f1000Factor)

cor(count.raw$authorsCount, count.raw$f1000Factor, use="complete.obs")

dim(count.raw[count.raw$journal %in% c("pone", "pbio"),])

dim(count.raw[grepl("Immu",count.raw$plosSubjectTags),])


if(any(is.na(count.raw$authorsCount))){
  print("YO")
} else {print("YOYO")}
