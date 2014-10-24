complete<-function(directory,id)
{
  setwd("/Users/Bentley/Documents/R Working Directory/Coursera/Assignment One")
  df.row<-data.frame() 
  df.completecases <- data.frame()
  for (i in id)
  {
    df.row<-cbind(id=i,nobs=sum(as.integer(complete.cases(read.csv((paste(getwd(),"/",directory,"/",sprintf("%03d",i),".csv",sep="")))))))  
    df.completecases<-rbind(df.completecases,df.row)
  }    
  return(df.completecases)
}

