### This R script file was made by Thanadol Klainin 6S No.8
#HW 3 
install.packages("tidyr")
library(tidyr)
library(dplyr)

car_dat <- mtcars
car_dat
auto <- filter(car_dat, am == "0" )
manual <- filter(car_dat, am == "1" )

plot(auto$hp, auto$mpg, pch = 16, ylim = c(10,35), xlim = c(0,350), xlab = "	Gross horsepower (hp)", ylab = 	'Miles/(US) gallon', main = ' Horsepower and Miles/gallonin in Automatic and Manual transmission ')
points(manual$hp, manual$mpg,pch = 16, col = "red")
legend(270, 35, legend=c("automatic", "manual"),
       col=c("black", "red"), cex=1, pch=c(16,16))

plot(auto$hp, auto$wt, pch = 16,ylim = c(1,5.5), xlim = c(0,350),xlab = "	Gross horsepower (hp)", ylab = 	'Weight (1000 lbs)', main = ' Horsepower and Weight (1000 lbs) in Automatic and Manual transmission')
points(manual$hp, manual$wt, col = 'red', pch = 24)
legend(0, 5.5, legend=c("Automatic", "Manual"),
       col=c("black", "red"), cex=1, pch=c(16,24))
#hist(car_dat$gear, breaks = 5)

plot(auto$disp, auto$mpg, pch = 17, xlim = c(50,500), ylim = c(10,35),main = 'Displacement (cu.in.) and Miles/(US) gallon in Automatic and Manual transmission', xlab = "Displacement (cu.in.)", ylab = "Miles/(US) gallon")
points(manual$disp, manual$mpg, pch = 18, col = 'red')
legend(400, 35, legend=c("Automatic", "Manual"),
       col=c("black", "red"),cex=1, pch=c(17,18))
legend(300, 30, legend=c("Trendline of Automatic", "Trendline of Manual"),
       col=c("black", "red"),cex=1,lty=1:1)
       
model_auto = lm(auto$mpg~auto$disp, data = auto)
model_man = lm(manual$mpg~manual$disp, data = manual)
abline(model_auto, col = "black")
abline(model_man, col = 'red')

model$coefficients
model1_sum = summary(model_auto)            
model1_sum$adj.r.squared
model2_sum = summary(model_man) 
model2_sum$adj.r.squared

