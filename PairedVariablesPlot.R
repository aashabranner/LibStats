## PLOT FOR TWO VARIABLES
attach(MSKUDATA)
par(mfrow=c(1,1))
plot(MSKUDATA$Journal.Articles.Accessed, MSKUDATA$PDFs.Downloaded, pch=20, col=JanDecCol,
     cex=c(5,3), main="Journals Accessed vs PDFs Downloaded",
     xlab="Journal Articles Accessed", ylab="PDFs Downloaded")
##ABLINE
abline(lm(Journal.Articles.Accessed~PDFs.Downloaded), lty=2, lwd= 2, col="firebrick")
legend("topleft", "AB Line", lty = 2, lwd=2, title = "Regression", col="firebrick")

## REFERENCE AND STAFFED LIBRARIANS
boxplot(MSKUDATA$Reference.Consultations~MSKUDATA$Staff, lwd=1, col= BuPu,
      main="Reference Consultations vs Staffed Librarians",
     xlab="Reference Consultations",
     ylab="Number of Staffed Librarians for Consultations", ylim=c(30,70))

