library('move')

rFunction <- function(data)
{
  Sys.setenv(tz="GMT")
  
  data.csv <- as.data.frame(data)
  data.csv.nona <- data.csv[,!sapply(data.csv, function(x) all(is.na(x)))]
  infos.pr <-c("local_identifier","timestamp","location_long","location_lat")
  infos.pr.ix <- which(names(data.csv.nona) %in% c("local_identifier","timestamp","location_long","location_lat"))
  data.csv.nona.pr <- data.frame(data.csv.nona[,infos.pr],data.csv.nona[,-infos.pr.ix])
    
  date <- as.Date(data.csv.nona.pr$timestamp)
  time <- strftime(data.csv.nona.pr$timestamp, format="%H:%M:%S")
  year <- strftime(date, format = "%Y")
  month <- strftime(date, format = "%m")
  yday <- strftime(date, format = "%j")
  calender_week <- strftime(date, format = "%V")

  data.csv.nona.prT <- data.frame(data.csv.nona.pr,date,time,year,month,yday,calender_week)
    
  write.csv(data.csv.nona.prT, file = paste0(Sys.getenv(x = "APP_ARTIFACTS_DIR", "/tmp/"),"data.csv"),row.names=FALSE)
  #write.csv(data.csv.nona.prT, file = "data.csv",row.names=FALSE)
  
  result <- data
  return(result)
}

  
  
  
  
  
  
  
  
  
  
