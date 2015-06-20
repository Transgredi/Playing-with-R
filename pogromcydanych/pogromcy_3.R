source("~/Documents/Developers/Programming/R/pogromcydanych/koty_ptaki_src.R")


odliczajDo <- 5

for (i in 1:odliczajDo) {
  cat("Wartość zmiennej i: ", i, "\n")
}


# losujemy liczbę stłuczek
liczbaStluczek <- round(runif(n = 1, min = 1, max = 10))
# dla każdej losujemy wartość szkody
for (i in 1:liczbaStluczek) {
  cat("Stłuczka ", i,", a jej koszt naprawy to ", 
      runif(n = 1, min=0, max=10000), " PLN\n", sep = '')
}

for (i in 1:liczbaStluczek) {
  koszt <- runif(n = 1, min=0, max=10000)
  sumaKosztow <- sumaKosztow + koszt
  cat("Stłuczka ", i,", a jej koszt naprawy to ",  koszt, " PLN\n", sep = '')
  cat("Suma dotychczasowych kosztów to ",  sumaKosztow, " PLN\n", sep = '')
}




coTrzeci <- seq(1, nrow(koty_ptaki), 3)
coTrzeci

for (i in coTrzeci) {
  # aby się dobrze wyświetlała, i-tą wartość z kolumny `gatunek` musimy zamienić na napis
  nazwa <- as.character(koty_ptaki[i, "gatunek"])
  cat("Zwierzak ", i," to ",  nazwa, "\n", sep = '')
}

kolumny <- colnames(koty_ptaki)
kolumny

# pętla, która dla każdej kolumny wyświetla różne wartości w niej występujące
for (i in kolumny) {
  wartosciWKolumnie <- unique(as.character(koty_ptaki[,i]))
  cat("Kolumna", i, "\n")
  cat("   ", length(wartosciWKolumnie), "różnych wartości:", wartosciWKolumnie, "\n")
}




# Zamiana zmiennej factor na zmienną napisową, po to by była dobrze wyświetlana
koty_ptaki$gatunek <- as.character(koty_ptaki$gatunek)

# wykonamy instrukcję dla pierwszego wiersza, indeks wiersza zapiszemy w zmiennej i
i <- 1                                                          
cat(koty_ptaki[i, "gatunek"], "może ważyć do", koty_ptaki[i, "waga"], "kg\n")





for (i in 1:nrow(koty_ptaki)) {
  cat(koty_ptaki[i,"gatunek"], "może ważyć do", koty_ptaki[i,"waga"], "kg\n")
}

cat(paste(koty_ptaki[,"gatunek"], "może ważyć do", koty_ptaki[,"waga"], "kg\n"))


for (i in colnames(koty_ptaki)) {
  for (j in colnames(koty_ptaki)) {
    # poniższa instrukcja wykona się dla każdej kombinacji nazw kolumn i i j
    cat("Kolumna '", i, "' i kolumna '", j, "' mają w sumie", nchar(i)+nchar(j), "znaków.\n")
  }
}




# używamy pętli by rysować koty_ptaki[i,"predkosc"] / 5 kropek
i <- 2
n_kropek <- koty_ptaki[i,"predkosc"] / 5
for (i in 1:n_kropek) {
  cat(".")
}





# Dla każdego wiersza w tabeli `koty_ptaki`
for (i in 1:nrow(koty_ptaki)) {
  n_kropek <- koty_ptaki[i,"predkosc"] / 5
  # rysowanie kropek
  for (j in 1:n_kropek) {
    cat(".")
  }
  # nazwa gatunku
  cat(" ", koty_ptaki[i,"gatunek"], "\n")
}