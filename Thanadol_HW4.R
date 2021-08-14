### This R script file was made by Thanadol Klainin 6S No.8

library(tidyr)

pollu.dat <- read.csv("C:\\Users\\asus\\Downloads\\pollution.csv")
pollu.dat
pollu.wide <- spread(pollu.dat, key = size, value=amount)
pollu.wide

