library("lubridate")
library("plyr")
library("stringr")
library("pastecs")
library("oce")

#Got time isolated with out arbitrary date
X195101_201404_ZoopXL$time <- X195101_201404_ZoopXL$Tow_Time

X195101_201404_ZoopXL$time <- gsub("1899-12-31 ", "", X195101_201404_ZoopXL$time)

#Joining date and time
date<- X195101_201404_ZoopXL$Tow_Date
time<- X195101_201404_ZoopXL$time

X195101_201404_ZoopXL$DateTime <- str_c(date,time,sep=" ")
