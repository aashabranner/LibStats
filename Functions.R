# FUNCTIONS

## Must provide a specific column with the $ operator

MeansByYear<-function(x){
  x2012<-mean(x[1:12])
  x2013<-mean(x[13:24])
  x2014<-mean(x[25:36])
  x2015<-mean(x[37:48])
  XYearlyMeans<-cbind(x2012, x2013, x2014, x2015)
  print(XYearlyMeans)
}
# Example
MeansByYear(MSKUDATA$Journal.Articles.Accessed)

# Total Column Means
TotalColMeans<-function(x){
  TotalColMeans<-round(colMeans(x), 1)
  print(TotalColMeans)
}
# EXAMPLE
MMeanFrame<-as.data.frame(TotalColMeans(MSKUDATA))


# DATA SUMMARIES TO BE USED AS A GUIDELINE FOR GRAPHING
MDataSummaries<-print(as.data.frame(summary(MSKUDATA)))


## DATA FRAME WITH MEAN TOTALS
MeanTotalofRows<-function(x) {
  TD<-t(x)
  Total.Means<-as.numeric(apply(TD, 1, mean))
  MSKUMEANS.TOT<-round(cbind(TD, Total.Means), 0)
  tMSKU<-t(MSKUMEANS.TOT)
  print(tMSKU)}
MeanTotalofRows(MSKUDATA)



#GRAPHIC FUNCTIONS

# CHARTED MEANS BY YEAR
ChartMeansbyYear<-function(x){
  R1<-MeansByYear(x[,1])
  R2<-MeansByYear(x[,2])
  R3<-MeansByYear(x[,3])
  R4<-MeansByYear(x[,4])
  R5<-MeansByYear(x[,5])
  R6<-MeansByYear(x[,6])
  R7<-MeansByYear(x[,7])
  par(mfrow=c(3, 3))
  barplot(R1, col = "midnightblue", main= "Circulating Materials--Means by Year", xlab="Years" )
  barplot(R2, col = "violetred4", main= "Articles Accessed--Means by Year", xlab="Years" )
  barplot(R3, col = "seagreen4", main= "PDFs Downloaded--Means by Year", xlab="Years" )
  barplot(R4, col = "yellow4", main = "ILL Requests--Means by Year", xlab="Years" )
  barplot(R5, col = "orchid4", main = "Reference Consultations--Means by Year", xlab="Years" )
  barplot(R6, col = "sienna3", main= "Staff--Means by Year", xlab="Years" )
  barplot(R7, col = "steelblue4", main = "Enrolled Students--Means by Year", xlab="Years" )
}
ChartMeansbyYear(MSKUDATA)

# Time Series Graphs saved as a function
TimeSeriesMSKU<-function(x){
  par(mfrow=c(3,3))
  #plot the series
  ts.plot(MSKUDATA.TS[,1], col= "midnightblue", lwd= 2, main="Circulating Materials", ylab= "User Counts")
  ts.plot(MSKUDATA.TS[,2], col= "violetred4", lwd= 2, main="Journal Articles Accessed", ylab= "User Counts")
  ts.plot(MSKUDATA.TS[,3], col= "seagreen4", lwd= 2, main="PDFs Downloaded", ylab= "User Counts")
  ts.plot(MSKUDATA.TS[,4], col= "yellow4", lwd= 2, main="ILL Requests", ylab= "User Counts")
  ts.plot(MSKUDATA.TS[,5], col= "orchid2", lwd= 2, main="Reference Consultations", ylab= "User Counts")
  ts.plot(MSKUDATA.TS[,6], col= "sienna3", lwd= 2, main="Staff Librarians", ylab= "User Counts")
  ts.plot(MSKUDATA.TS[,7], col= "steelblue4", lwd= 2, main="Total Enrollment for Miskatonic University",
          ylab= "User Counts")
}

