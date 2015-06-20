setwd("~/Documents/Developers/Programming/R/pogromcydanych/")
getwd()

koty_ptaki <- read.table("koty_ptaki.csv", 
                         sep=";", dec=",", header=TRUE)

library("gdata")
koty_ptaki_x <- read.xls("koty_ptaki.xls", sheet = 1)

koty_ptaki_r <- load(url("http://biecek.pl/MOOC/dane/koty_ptaki.rda"))

data(package = "PogromcyDanych")

library(SmarterPoland)

tsdtr210 <- getEurostatRCV("tsdtr210")
head(tsdtr210, 3)

summary(tsdtr210)

