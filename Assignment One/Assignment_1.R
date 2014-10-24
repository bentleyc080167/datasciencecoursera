pollutantmean<-function(directory,PollutantName,id)
{
  ##pollution.vector<-NA
  pollution.all<-NA
  for (i in id)
       {
          pollution.df<-read.csv((paste(directory,sprintf("%03d",i),".csv",sep="")))
          pollution.all<-rbind(pollution.all,pollution.df)
          ## pollution.vector<-c(pollution.vector,pollution.df[,PollutantName])
       }    
  ##mean(pollution.vector,na.rm=TRUE)
  #colMeans(pollution.all[[2]],na.rm=TRUE)
  mean(pollution.all[,PollutantName],na.rm=TRUE)
}
print(pollutantmean(directory="~/Documents/R Working Directory/Coursera/Assignment One/specdata/",PollutantName="nitrate",id=70:72))
str(outcome)
#pollution.result<-pollutantmean(directory="~/Documents/R Working Directory/Coursera/Assignment One/specdata/",id=1:5)
#attributes(pollutantmean(directory="~/Documents/R Working Directory/Coursera/Assignment One/specdata/",PollutantName="nitrate",id=1:5))
#nrow(pollutantmean(directory="~/Documents/R Working Directory/Coursera/Assignment One/specdata/",PollutantName="nitrate",id=1:5))

#pollution.result[1:3000,"Date"]
print(2)
?str
?colMeans
pollution.result<-read.csv("~/Documents/R Working Directory/Coursera/Assignment One/specdata/005.csv")
str(pollution.result)
?mean
?lapply
x<-c(x,99)
x<-c(2)
x
#fullpath
#polution.2<-read.csv("~/Documents/R Working Directory/Coursera/Assignment One/specdata/005.csv")
#lapply(polution.2,mean,na.rm=TRUE)
#xvec<-sapply(polution.2,mean,na.rm=TRUE)
#pollutantmean <- function(directory=getwd(), id)
#addtwonumber<-function(x,y){x+y}
#addtwonumber(12,5)