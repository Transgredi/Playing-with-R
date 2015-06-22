DF <- data.frame(
  imie = c("Maja","Anna","Zosia","Anna"),
  wiek = c("40","12,5","25","16.6"),
  numer = c(1,2,NA,4),
  oczo = factor(c("niebieskie", "jasno-niebieskie", "ciemne", "niebieskie")),
  stringsAsFactors = FALSE)

colnames(DF)[4] <- "oczy"

# Dzieki nawiasom wynik przypisania zostanie
# wyswietlony na ekranie.
(tmp <- gsub(pattern = ",", replacement = ".", DF$wiek))

DF$wiek <- as.numeric(tmp)