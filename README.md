# Class-R-2-HW1-4-1
---
title: "Class R2 HW1-4"
author: "Thanadol Klainin"
date: "8/13/2021"
# Homewoek I find mean of Sepal, Petal
> This is ``` code ``` You can run the R script file name "Thanadol_HW1"

```
dat <- iris
dat
Mean_value <- apply(dat[,1:4], 2, mean)
print(Mean_value)
barplot(Mean_value, ylim = c(0,6), main = 'Iris data')

```
# Out put 
> We get the mean value in each column

```
Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
    5.843333     3.057333     3.758000     1.199333 
```
>อันนี้แถมให้ครับ เอามา plot เป็น barplot ได้ดังนี้

![barplot]("D:\\M6\\782\\HW1_meanplot.png")


## Homework II 
>ให#นักเรียน plot แสงค5า sepal length ของ iris แต5ละสายพันธFุในกราฟเดียวกัน
•ให#นักเรียน plot แสดงค5า petal length ของ iris
แต5ละสายพันธFุในกราฟเดียวกัน

# Solution I

> ผมใช้การ plot ระหว่าง sepal length and width ของแต่ละสายพันธ์ เพื่อทำการ Clustering ได้
> This is ``` code ``` You can run the R script file name "Thanadol_HW2"

```
## This R script file was made by Thanadol Klainin
install.packages("tidyr")
library(tidyr)
library(dplyr)
dat <- iris
dat

plot(setosa$Sepal.Length, setosa$Sepal.Width, pch = 16, xlim = c(3,8))
points(versicolor$Sepal.Length, versicolor$Sepal.Width, pch =16, col = 'red')
points(virginica$Sepal.Length, virginica$Sepal.Width, pch =16, col = 'blue')
#plot(virginica$Sepal.Length, virginica$Sepal.Width, pch =16, col = 'blue')

plot(setosa$Petal.Length, setosa$Petal.Width, pch = 16, xlim = c(1,7), ylim = c(0,))
points(versicolor$Petal.Length, versicolor$Petal.Width, pch =16, col = 'red')
points(virginica$Petal.Length, virginica$Petal.Width, pch =16, col = 'blue')

```

# OUT PUT 



# Solution II
> ใช้ barplot เทียบค่า mean ของแต่ละสายพันธุ์
> This is ``` code ``` You can run the R script file name "Thanadol_HW2"

```
install.packages("tidyr")
library(tidyr)
library(dplyr)
dat <- iris
dat
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
barplot(compair_sepal.Length )

compair_petal.Length <- c(mean_setosa[3], mean_ver[3], mean_virgin[3])
barplot(compair_petal.Length )
```
# OUT PUT 


## Homework III  mtcars data

> plot ออกมาเป็น 3 กราฟ 

```
### This R script file was made by Thanadol Klainin
#HW 3 
install.packages("tidyr")
install.packages("explore")
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
```

> hP vs wt

```
### This R script file was made by Thanadol Klainin
#HW 3 
install.packages("tidyr")
install.packages("explore")
library(tidyr)
library(dplyr)

car_dat <- mtcars
car_dat
auto <- filter(car_dat, am == "0" )
manual <- filter(car_dat, am == "1" )
plot(auto$hp, auto$wt, pch = 16,ylim = c(1,5.5), xlim = c(0,350),xlab = "	Gross horsepower (hp)", ylab = 	'Weight (1000 lbs)', main = ' Horsepower and Weight (1000 lbs) in Automatic and Manual transmission')
points(manual$hp, manual$wt, col = 'red', pch = 24)
legend(0, 5.5, legend=c("Automatic", "Manual"),
       col=c("black", "red"), cex=1, pch=c(16,24))
```

> disp vs mpg

```
### This R script file was made by Thanadol Klainin
#HW 3 
install.packages("tidyr")
install.packages("explore")
library(tidyr)
library(dplyr)

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
model_sum = summary(model)            
model_sum$adj.r.squared
```

# HW4


```
### This R script file was made by Thanadol Klainin

library(tidyr)

pollu.dat <- read.csv("C:\\Users\\asus\\Downloads\\pollution.csv")
pollu.dat
pollu.wide <- spread(pollu.dat, key = size, value=amount)
pollu.wide
```

