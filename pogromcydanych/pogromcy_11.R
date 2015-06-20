litery <- LETTERS[1:10]
cyfry  <- 1:10

paste(litery, cyfry, ".")

paste(litery, cyfry, ".", sep="-")

# Funkcja paste0() tym różni się od funkcji paste(),
# że separator jest pustym napisem.
paste0(litery, cyfry, ".")

# wszystkie imiona, których ostatnia litera to a
imiona_chlopcow <- imiona_warszawa[imiona_warszawa$plec == "M", ]
same_imiona     <- unique(imiona_chlopcow$imie)
grep("a$", same_imiona, value = TRUE)

# wszystkie litery poza a
imiona_dziewczat <- imiona_warszawa[imiona_warszawa$plec == "K", ]
same_imiona      <- unique(imiona_dziewczat$imie)
grep("[^a]$", same_imiona, value = TRUE)

imiona_f <- imiona_dziewczat[imiona_dziewczat$liczba > 0, ]

imiona_f <- grep("[^a]$", imiona_dziewczat[imiona_dziewczat$liczba > 0,],
                       value = TRUE)