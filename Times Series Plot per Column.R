#TIME SERIES GRAPHS
#Change the parameters to fit more graphs into one window
## OR DO NOT run this code, and run plots individually or in groups by changing the c(#,#)
par(mfrow=c(3,3))
#plot the series
ts.plot(MSKUDATA.TS[,1], col= "midnightblue", lwd= 2, main="Circulating Materials", ylab= "User Counts")
ts.plot(MSKUDATA.TS[,2], col= "violetred4", lwd= 2, main="Journal Articles Accessed", ylab= "User Counts")
ts.plot(MSKUDATA.TS[,3], col= "seagreen4", lwd= 2, main="PDFs Downloaded", ylab= "User Counts")
ts.plot(MSKUDATA.TS[,4], col= "yellow4", lwd= 2, main="ILL Requests", ylab= "User Counts")
ts.plot(MSKUDATA.TS[,5], col= "orchid2", lwd= 2, main="Reference Consultations", ylab= "User Counts")
ts.plot(MSKUDATA.TS[,6], col= "sienna3", lwd= 2, main="Staff Librarians", ylab= "User Counts")
ts.plot(MSKUDATA.TS[,7], col= "steelblue4", lwd= 2, main="Total Enrollment for Miskatonic University", ylab= "User Counts")

## REMEMBER TO CHANGE YOUR PLOT WINDOW BACK TO (1,1) or R will continue to plot graphs in (3,3)
# THE PAR function along with locator(1) allows you to choose where to place your legend
par(xpd=T, mar=par()$mar+c(0,0,0,2))
ts.plot(MSKUDATA.TS, col= ColorsForCols, lwd=4)
legend(locator(1), names(MSKUDATA), lwd=2, title = "Trends over Time", col=ColorsForCols,
       fill = ColorsForCols, ncol = 3, cex=.75)

# Colors for Cols means for columns and will plot an individual color that corresponds with a specific
# column. This is especially nice when plotting different types of graphs that compare all seven columns.
