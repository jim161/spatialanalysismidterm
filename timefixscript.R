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

write.table(X195101_201404_ZoopXL, "Zoop.txt", sep="\t", row.names =FALSE, col.names=TRUE)

#isolating date to get points from 1997/1998 and make table
trawlyear<- str_sub(erdCalCOFIcufes_bb4a_5c83_ad3aXL$time_UTC ,1,4)
erdCalCOFIcufes_bb4a_5c83_ad3aXL$YEAR <- trawlyear

write.table(erdCalCOFIcufes_bb4a_5c83_ad3aXL, "CalCO.txt", sep="\t", row.names =FALSE, col.names=TRUE)
