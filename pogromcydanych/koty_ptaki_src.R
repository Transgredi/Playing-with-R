setwd("~/Documents/Developers/Programming/R/pogromcydanych/")
getwd()

koty_ptaki <- read.table("koty_ptaki.csv", 
                         sep=";", dec=",", header=TRUE)