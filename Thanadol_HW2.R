## This R script file was made by Thanadol Klainin 6S No.8

install.packages("tidyr")
library(tidyr)
library(dplyr)
dat <- iris
dat
# barplot
setosa <-filter(dat, Species == "setosa") 
mean_setosa <- apply(setosa[,1:4], 2, mean)
mean_setosa
versicolor<-filter(dat, Species == "versicolor")
mean_ver <- apply(versicolor[,1:4], 2, mean) 
virginica<-filter(dat, Species == "virginica")
mean_virgin <- apply(virginica[,1:4], 2, mean) 
mean_setosa[1]
compair_sepal.Length <- c(mean_setosa[1], mean_ver[1], mean_virgin[1])
compair_sepal.Length
bp <- barplot(compair_sepal.Length, main = "Mean of Sepal Length in 3 species", xlab = "Species", ylab = "Sepal Length (cm)" )
text(bp, 0, round(compair_sepal.Length, 1),cex=1,pos=3) 

compair_petal.Length <- c(mean_setosa[3], mean_ver[3], mean_virgin[3])
bp2 <- barplot(compair_petal.Length ,main = "Mean of Petal Length in 3 species", xlab = "Species", ylab = "Petal Length (cm)")
text(bp2, 0, round(compair_petal.Length, 1),cex=1,pos=3) 


#plot and point

plot(setosa$Sepal.Length, setosa$Sepal.Width, pch = 16, xlim = c(3,8), xlab = "Sepal Length (cm)", ylab = "Sepal Width (cm)", main = "Sepal Length-Width in 3 species")
points(versicolor$Sepal.Length, versicolor$Sepal.Width, pch =16, col = 'red')
points(virginica$Sepal.Length, virginica$Sepal.Width, pch =16, col = 'blue')
legend(3, 4.2, legend=c("Setosa", "Versicolor", "Virginica"),
       col=c("black", "red", "blue"),cex=1, pch=c(16,16))

plot(setosa$Petal.Length, setosa$Petal.Width, pch = 16, xlim = c(1,7), ylim = c(0,3), xlab = "Petal Length (cm)", ylab = "Petal Width (cm)", main = "Petal Length-Width in 3 species")
points(versicolor$Petal.Length, versicolor$Petal.Width, pch =17, col = 'red')
points(virginica$Petal.Length, virginica$Petal.Width, pch =15, col = 'blue')
legend(1, 3, legend=c("Setosa", "Versicolor", "Virginica"),
       col=c("black", "red", "blue"), cex=1, pch=c(16,17,15))

