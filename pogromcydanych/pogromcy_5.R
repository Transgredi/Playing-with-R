setwd("~/Documents/Developers/Programming/R/pogromcydanych/")
getwd()

koty_ptaki <- read.table("koty_ptaki.csv", 
                         sep=";", dec=",", header=TRUE)
koty_ptaki$gatunek <- as.character(koty_ptaki$gatunek)


rysuj_kropki_1 <- function(n_kropek = 20) {
  # w pętli rysujemy n_kropek
  for (j in 1:n_kropek) {
    cat(".")
  }
}


rysuj_kropki_2 <- function(n_kropek = 20) {
  # czy liczba kropek do wyświetlenia jest większa niż zero?
  if (n_kropek > 0) {
    for (j in 1:n_kropek) {
      cat(".")
    }
  } 
}



rysuj_kropki_3 <- function(n_kropek = 20, znak = ".") {
  if (n_kropek > 0) {
    for (j in 1:n_kropek) {
      cat(znak)
    }
  }
}


rysuj_wykres_kropkowy <- function(nazwy, wartosci) {
  # zakładamy, że oba wektory są tej samej długości
  # funkcja seq_along(nazwy) tworzy sekwencję od 1 do długości wektora nazwy
  for (i in seq_along(nazwy)) {
    rysuj_kropki_1(wartosci[i])
    cat(" ", nazwy[i],"\n")
  }
}


rysuj_wykres_kropkowy(koty_ptaki$gatunek, koty_ptaki$predkosc/5)


rysuj_wykres_kropkowy <- function(nazwy, wartosci) {
  # czy oba argumenty mają równą długość?
  if (length(nazwy) != length(wartosci)) {
    # funkcja stop() przerywa działanie funkcji
    stop("Argumenty mają różną długość! ", length(nazwy), " oraz ", length(wartosci))
  }
  # jeżeli wszystkie warunki są spełnione to można kontynuować wykonanie funkcji
  for (i in seq_along(nazwy)) {
    rysuj_kropki(wartosci[i])
    cat(" ", nazwy[i],"\n")
  }
}


# W liście argumentów funkcji dozwolony jest też specjalny argument .... 
# Używając go można przekazać wszystkie pozostałe argumenty dalej, do funkcji wewnętrznych.
# 
# W przykładzie poniżej operator ... pojawia się w dwóch miejscach, 
# w liście argumentów funkcji rysuj_wykres_kropkowy() 
# i w liście argumentów funkcji rysuj_kropki().
# 
# Wszystkie argumenty dla funkcji rysuj_wykres_kropkowy(), 
# których nazwa jest różna od nazwy i wartosci będą przekazane dalej do funkcji rysuj_kropki().

rysuj_wykres_kropkowy <- function(nazwy, wartosci, ...) {
  for (i in seq_along(nazwy)) {
    rysuj_kropki_3(wartosci[i], ...)
    cat(" ", nazwy[i],"\n")
  }
}

# Zilustrujmy to na przykładzie. 
# Wywołujemy rysuj_wykres_kropkowy() z trzema argumentami, 
# trzeci, czyli znak = "X" zostanie przekazany do rysuj_kropki() 
# dzięki czemu na wykresie pojawią się znaki X.

rysuj_wykres_kropkowy(nazwy = LETTERS[1:5], wartosci = 1:5, znak = "X")



suma_n_liczb_losowych <- function(n = 10) {
  if (n < 1) {
    return(0)
  } 
  sum(runif(n))
}