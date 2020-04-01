dfnum <- read.csv("CustomerNumerical.csv")
View(dfnum)
range01 <- function(x){(x - min(x)) / (max(x) - min(x))}
dfscaled<-dfnum
dfscaled[,1] <-range01(dfnum[,1])
dfscaled[,2] <-range01(dfnum[,2])
View(dfscaled)
k3 <- kmeans(dfscaled, centers = 3, nstart = 50)
str(k3)
dfnumk3 <- cbind(dfnum,clusterID=k3$cluster)
mean(dfnumk3$Age)
mean(dfnumk3$Age[dfnumk3$clusterID==1])
plot(dfnumk3$Age,dfnumk3$Income, col=factor(dfnumk3$clusterID))
