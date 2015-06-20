library(PogromcyDanych)
setwd("~/Documents/Developers/Programming/R/pogromcydanych/")


waluty <- table(auta2012$Waluta)
barplot(waluty)

waluty_s <- sort(waluty)
# Argument las=1 powoduje, że oś OY ma etykiety ustawione poziomo.
barplot(waluty_s, horiz = TRUE, las = 1)


table(auta2012$Kraj.pochodzenia, auta2012$Waluta)

krajWaluta <- xtabs( ~ Kraj.pochodzenia + Waluta, auta2012)

round(prop.table(krajWaluta, 1), 3)

xt <- xtabs(~ Kraj.pochodzenia + Waluta, auta2012)
xt <- as.data.frame(xt)
xt[xt$Freq > 0, ]
xt[rev(order(xt$Freq)),]


koty_ptaki$waga

koty_ptaki$wagaKategoria <- cut(koty_ptaki$waga, c(0, 1, 10, 100, 1000))
table(koty_ptaki$wagaKategoria)
xtabs(~druzyna + wagaKategoria, koty_ptaki)

druzynaWaga <- xtabs(~druzyna + wagaKategoria, koty_ptaki)
mosaicplot(druzynaWaga, las = 2)


auta2012$Rok.produkcji.2 <- cut(auta2012$Rok.produkcji, c(1900, 1990, 
                                                          1991, 1995,
                                                          1996, 2000,
                                                          2001, 2005,
                                                          2006, 2010,
                                                          2011, 2012))