pollutantmean<-function(directory,PollutantName,id=1:332)
{
  pollution.all<-NA
  for (i in id)
  {
    pollution.df<-read.csv((paste(directory,"/",sprintf("%03d",i),".csv",sep="")))
    pollution.all<-rbind(pollution.all,pollution.df)
  }    
  mean(pollution.all[,PollutantName],na.rm=TRUE)
}