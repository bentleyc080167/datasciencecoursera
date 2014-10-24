corr <- function(directory, threshold = 0) 
{
  setwd(paste("/Users/Bentley/Documents/R Working Directory/Coursera/Assignment One/",directory,sep=""))
  vecCorr <- vector(mode="numeric",length = 0)
  for (i in list.files(".")) 
    {
      pollutionData <- read.csv(i)
      pollutionComp <- complete.cases(pollutionData)
      nobs <- sum(pollutionComp)
      pollutionData<-pollutionData[pollutionComp,]
      if (nobs > threshold) 
        {
          vecCorr <- c(vecCorr,cor(pollutionData[,"sulfate"],pollutionData[,"nitrate"]))
        }
    }
  return(vecCorr)
}