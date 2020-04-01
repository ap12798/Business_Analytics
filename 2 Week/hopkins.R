# how clusterable is our data? the greater hopkins the more clusterable (if .5 it is totally random)
dfwc <- read.csv("WholesaleCustomers.csv")
View(dfwc)
summary(dfwc)
plot(dfwc$Fresh,dfwc$Milk)
library(clustertend)
set.seed(123)
dfclean <- dfwc[,3:6]
View(dfclean)
hopkins <- hopkins(dfclean,n = nrow(dfclean)-1)
hopstat <- 1- hopkins[[1]]
hopstat

