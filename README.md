# Data Visualization (2) Homeworks 1-4 

## title:  Data Visualization (2) Homeworks 1-4 
## author: "Thanadol Klainin 6S No.8 "
## date: "8/14/2021"

# Homewoek I find mean of Sepal, Petal
> This is ``` code ``` You can run the R script file name "Thanadol_HW1"

```
### This R script was made by Thanadol Klainin 6S No.8
install.packages("gcookbook")
library("gcookbook")
dat <- iris
dat
Mean_value <- apply(dat[,1:4], 2, mean)
print(Mean_value)
bp <- barplot(Mean_value, ylim = c(0,6), main = 'Iris data', ylab = "centimeters")
text(bp, 0, round(Mean_value, 1),cex=1,pos=3) 
```
### Output 
> We get the mean value in each column

```
Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
    5.843333     3.057333     3.758000     1.199333 
```
>อันนี้แถมให้ครับ เอามา plot เป็น barplot ได้ดังนี้

![Meanplot](https://user-images.githubusercontent.com/67301601/129450171-e7e6ad25-b4b5-46d0-b2f8-52425b4db45c.png)


# Homework II 
>ให้นักเรียน plot แสดงความยาว sepal length ของ iris แต่ละสายพันธ์ุในกราฟเดียวกัน ให้นักเรียน plot แสดงความยาว petal length ของ iris แต่ละสายพันธุ์ในกราฟเดียวกัน

## Solution I

> ผมใช้การ Plot ระหว่าง sepal length and width ของแต่ละสายพันธ์ เพื่อทำการ Clustering ได้ 
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

### Output 
* Sepal length and Width in 3 species
![Sepal length and Width in 3 species](https://user-images.githubusercontent.com/67301601/129450250-73d806d7-d207-4d3c-a531-7f7ce14c5326.png)


* Petal length and Width in 3 species

![Petal length and Width in 3 species](https://user-images.githubusercontent.com/67301601/129450298-4dbf77d9-45d8-44a0-ab69-462e30f08091.png)


## Solution II
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
### Output 
* Mean of Sepal Length in 3 species
![Mean of Sepal Length in 3 species](https://user-images.githubusercontent.com/67301601/129450434-27581609-8fae-4e04-93d0-17bbc234d9d3.png)


* Mean of Petal Length in 3 species

![HW2_4](https://user-images.githubusercontent.com/67301601/129450470-046ac517-1de8-46ec-9482-f78c7de102a5.png)


# Homework III  mtcars data

> plot ออกมาเป็น 3 กราฟ
## 1.กราฟแสดงความสัมพันธ์ระหว่างแรงม้า (gross horsepower) กับอัตราการสิ้นเปลืองน้ำมัน Miles/(US) gallon (mpg) โดยแย่งแยกตามประเภท Transmission [Auto, Manual] 

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
### Output 
* Horsepower and Miles/gallonin in Automatic and Manual transmission 
![HW3_1](https://user-images.githubusercontent.com/67301601/129450653-60bb76a0-308f-444a-afe9-2cc450f5a572.png)

> จากกราฟจะเห็นว่าความสัมพันธ์ของ hp กับ mpg จะเป็นแบบ Negative คือยิ่ง hp มาก Mpg ก็จะต่ำ ซึ่งก็วิเคราะห์ได้ว่ายิ่งรถที่มีแรงม้าเยอะ อัตราการสิ้นเปลืองพลังงานเลยสูง นั้นหมายความว่า จำนวน miles ที่วิ่งได้ต่อเชื้อเพลิง 1 gallon เลยต่ำ และจากการแยกประเภทของ Transmission ก็พบว่า ในฐานข้อมูลนี้ รถที่จะประหยัดน้ำมัน (mpg สูง เพราะน้ำมัน 1 gallon วิ่งได้หลาย miles) คือรถระบบเกียร์ manual ซึ่งก็สมเหตุสมผลตามหลักวิศวกรรมยานยนต์


## 2.กราฟแสดงความสัมพันธ์ระหว่างแรงม้า (gross horsepower) กับ น้ำหนักรถ โดยแย่งแยกตามประเภท Transmission [Auto, Manual]

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
### Output 
*  Horsepower and Weight (1000 lbs) in Automatic and Manual transmission
![Horsepower and Weight (1000 lbs) in Automatic and Manual transmission](https://user-images.githubusercontent.com/67301601/129450733-85cb2637-2c60-4b75-bb27-212fb3b7915f.png)

> จากกราฟจะเห็นว่าความสัมพันธ์ของ hp กับ น้ำหนักรถ จะเป็นแบบ Positive คือยิ่ง hp มาก น้ำหนักรถก็มีแนวโน้มมากตาม ซึ่งก็วิเคราะห์ได้ว่ายิ่งรถที่มีแรงม้าเยอะ การออกแบบระบบเครื่องยนต์อาจจะมีความซับซ้อนและมีอุปกรณ์เยอะ   ทำให้น้ำหนักของรถก็มากตาม และจากการแยกประเภทของ Transmission ก็พบว่า ในฐานข้อมูลนี้ รถที่มีแรงม้าเยอะและยังคงมีน้ำหนักที่ไม่มากคือ รถระบบเกียร์ Manual เพราะจากการสังเกตกราฟ ในช่วงประมาณ hp เท่ากัน รถระบบเกียร์ manual จะมี Weight ที่ต่ำกว่า


## 3.กราฟแสดงความสัมพันธ์ระหว่าง Engine Displacement (ความจุเครื่องยนต์) กับ อัตราการสิ้นเปลืองน้ำมัน Miles/(US) gallon (mpg) โดยแย่งแยกตามประเภท Transmission [Auto, Manual]

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
## Output 
* Displacement (cu.in.) and Miles/(US) gallon in Automatic and Manual transmission
![Displacement (cu.in.) and Miles/(US) gallon in Automatic and Manual transmission](https://user-images.githubusercontent.com/67301601/129450842-947a729a-3e86-4f79-a326-26d8963b0870.png)

> จากกราฟจะเห็นว่าความสัมพันธ์ของ  Engine Displacement หรือ ความจุเครื่องยนต์ ต่อ mpg จะเป็นแบบ Negative หมายความว่า ยิ่งเครื่องยนต์มีความจุมาก mpg ก็ยิ่งต่ำ ซึ่งก็วิเคราะห์ได้ตามหลักยานยนต์ว่า ยิ่งเครื่องยนต์มีความจุมาก ยิ่งต้องมีอัตราสิ้นเปลืองเชื้อเพลิงที่สูง ทำให้เลข miles/gallon เลยต่ำ [หากเปรียบเทียบก็เหมือน Eco car ที่เครื่องเล็ก แต่ประหยัดน้ำมัน 20 กม./ลิตร ในขณะที่รถ supercar เครื่อง V8 ตัวเลขการประหยัดน้ำมันก็ต่ำ ] และหากดูตามประเภท Transmission ก็จะบว่ากราฟของรถระบบ Manual มีความชันมากกว่า และมีรถตั้งแต่ความจุที่น้อยกว่าและมี mpg มากกว่า  แต่หากดูข้อมูลในช่วงกลาง ๆ ของกราฟ ก็ยากที่จะแบ่งแยกระหว่าง Auto กับ Manual  
โดยในกราฟนี้ได้ใส่ Trendline ของ 2 Transmission ไว้ด้วย ซึ่งได้ค่า R2 ของ Auto = 0.6064013 และ R2ของ Manual = 0.6695094 ซึ่งค่าก็ไม่ได้ดีมาก (คิดโดยใช้ function lm() [linear regression model] ในการคิด


# Homework IV Pollution Data
> This is ``` code ``` You can run the R script file name "Thanadol_HW4"
```
### This R script file was made by Thanadol Klainin

library(tidyr)

pollu.dat <- read.csv("C:\\Users\\asus\\Downloads\\pollution.csv")
pollu.dat
pollu.wide <- spread(pollu.dat, key = size, value=amount)
pollu.wide
```
### Output 
```
> pollu.wide
      city large small
1  Beijing   121    56
2   London    22    16
3 New York    23    14
```


## Author: "Thanadol Klainin 6S No.8"
## ESC 782 DSS 
