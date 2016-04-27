# LIBRARY STATS PACKAGE
# This contains code to load the data, create the objects, and load and create packages that may be used
# to analyze the data. Color sets are also generated.
## NEED TO LOAD Miskatonic University user counts
MSKUDATA<-read.csv("MU12_15.csv")
DetailedRefStats<-read.csv("ReferenceDetails.csv")
### WRITE A FUNCTION TO CONVERT DATA TO A TIME SERIES
MSKUDATA.TS<-ts(MSKUDATA, start = c(2012,1), end = c(2015,12), frequency = 12)
#### LOAD PACKAGES ####
# These packages are very useful for summary statistics and the subsequent production of
## graphics outputs

install.packages("MASS")
require(MASS)
# Example of MASS Function
corresp(MSKUDATA)

install.packages("car")
require(car)
# EXAMPLE GRAPH WITH CAR: Regression and Standard Deviation
scatterplot(MSKUDATA$Journal.Articles.Accessed~MSKUDATA$PDFs.Downloaded, boxplot=FALSE)

install.packages("psych")
require(psych)
# EXAMPLE OF Psych
cor.test(MSKUDATA$Journal.Articles.Accessed, MSKUDATA$PDFs.Downloaded)

# INSTALL COLOR BREWER
install.packages("RColorBrewer")
require(RColorBrewer)

# To view all colors in color brewer by name
colors()

# to view colors in color brewer by graphing
## make sure your graphing parameters are (1,1)
par(mfrow=c(1,1))

# COLORS
## COLORS FOR THE INDIVIDUAL COLUMNS WHEN GRAPHING
ColorsForCols<-c("midnightblue", "violetred4","seagreen4",
                 "yellow4", "orchid2","sienna3","steelblue4")

### COLORS FOR THE INDIVIDUAL MONTHS WHEN GRAPHING
MonthCOL<-brewer.pal(12, "Set3")

## 3 COLORS
COLS3<-brewer.pal(3, "Pastel1")

## 6 COLORS, BLUES
blues<-brewer.pal(6, "Blues")

## 12 Colors GREENS
BrownGreen<-brewer.pal(11, "BrBG")
JanDecCol<-c(BrownGreen, "green4")

# 4 colors
BuPu<- brewer.pal(4, "BuPu")

# VIEW COLOR SETS
display.brewer.all()

#CLICK SOURCE -> at the top right of this window to run the entire code
