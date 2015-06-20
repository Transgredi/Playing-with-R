source("~/Documents/Developers/Programming/R/pogromcydanych/koty_ptaki_src.R")

liczbaLosowa <- runif(n = 1)

if (liczbaLosowa < 0.5) {
  cat("Orzeł")
} else {
  cat("Reszka")
}


koty_ptaki$gatunek <- as.character(koty_ptaki$gatunek)


i <- 9
koty_ptaki[i,]

if (koty_ptaki[i,"druzyna"] == "Kot") {
  cat(koty_ptaki[i,"gatunek"], "to duży kot.")
} else {
  cat(koty_ptaki[i,"gatunek"], "to ptak.")
}


koty_ptaki[,"druzyna"] == "Kot"

ifelse(koty_ptaki[,"druzyna"] == "Kot",
       "Kolejny wielki kot",
       "Kolejny szybki ptak")



# pętla wykona się dla każdego wiersza
for (i in 1:nrow(koty_ptaki)) {
  # wewnątrz pętli wykonanie zależy od warunku i instrukcji if
  if (koty_ptaki[i,"druzyna"] == "Kot") {
    cat(koty_ptaki[i,"gatunek"], "to wielki i szybki kot.\n")
  } else {
    cat(koty_ptaki[i,"gatunek"], "to ptak.\n")
  }
}


# inicjujemy zmienne
liczbaKotow  <- 0
liczbaPtakow <- 0
# w pętli będziemy zmieniać wartość zmiennych w zależności od tego 
# czy kolejny wiersz opisuje koty czy ptaki
for (i in 1:nrow(koty_ptaki)) {
  if (koty_ptaki[i,"druzyna"] == "Kot") {
    liczbaKotow  <- liczbaKotow + 1
  } else {
    liczbaPtakow <- liczbaPtakow + 1
  }
}
# zliczamy ile było kotów i ptaków
liczbaKotow 