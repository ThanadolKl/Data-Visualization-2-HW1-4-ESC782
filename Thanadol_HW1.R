### This R script was made by Thanadol Klainin 6S No.8
install.packages("gcookbook")
library("gcookbook")
dat <- iris
dat
Mean_value <- apply(dat[,1:4], 2, mean)
print(Mean_value)
bp <- barplot(Mean_value, ylim = c(0,6), main = 'Iris data', ylab = "centimeters")
text(bp, 0, round(Mean_value, 1),cex=1,pos=3) 
