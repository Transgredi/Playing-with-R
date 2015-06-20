setwd("~/Documents/Developers/Programming/R/pogromcydanych/")
getwd()

koty_ptaki <- read.table("koty_ptaki.csv", 
                         sep=";", dec=",", header=TRUE)

setwd("~/Documents/Developers/Programming/R/pogromcydanych/")
getwd()
# tworzymy nowy zbiór danych
dwie_kolumny <- data.frame(litery  = c("A", "B", "C"),
                           liczby  = c(1,2,3))
dwie_kolumny
#   litery liczby
# 1      A      1
# 2      B      2
# 3      C      3

write.table(dwie_kolumny, file="wazne_dane.csv", 
            sep = ";", dec = ".")

dir()

#literki :)
#stała LETTERS
LETTERS[LETTERS < "L"]


rownames(koty_ptaki) <- koty_ptaki$gatunek
koty_ptaki

rownames(koty_ptaki) <- NULL
koty_ptaki

kolejnosc <- order(koty_ptaki[,"predkosc"])
koty_ptaki[kolejnosc, ]