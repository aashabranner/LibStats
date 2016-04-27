# REFERENCE DETAILS STATS AND PLOTS
# STATS
summary(DetailedRefStats)
par(mfrow=c(1,3))
barplot(DetailedRefStats$Citations.Lookups, names.arg = DetailedRefStats$Librarian,
        col = blues, ylim=c(0, 200), main="Citation Lookups by Librarian",
        xlab="Librarian", ylab = "Number of Lookups")
barplot(DetailedRefStats$Catalog.Lookups, names.arg = DetailedRefStats$Librarian,
        col = blues, ylim=c(0, 200), main="Catalog Lookups by Librarian",
        xlab="Librarian", ylab = "Number of Lookups")
barplot(DetailedRefStats$Research.Assistance, names.arg = DetailedRefStats$Librarian,
        col = blues, ylim=c(0, 200), main="Research Assistance by Librarian",
        xlab="Librarian", ylab = "Number of Lookups")
