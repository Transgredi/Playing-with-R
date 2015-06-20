
table(koty_ptaki$gatunek, koty_ptaki$waga)
table(koty_ptaki$druzyna)

glimpse(auta2012)

levels(auta2012$Waluta)


# Zmienne jakościowe często opisuje się tablicą liczebności, a więc informacją ile
# razy wystąpiła każda z wartości ze słownika.
# Tablicę liczebności można wyznaczyć funkcją table() lub summary().
# Jeżeli w zmiennej jakościowej występują wartości brakujące,
# to funkcja summary() też napisze ile ich jest (funkcja table() domyślnie tego nie robi,
# można takie zachowanie wymusić dodając argument useNA = "always").

summary(auta2012$Waluta)
table(auta2012$Waluta)
table(auta2012$Waluta, useNA = "always")


waluty <- table(auta2012$Waluta)

frakcje <- prop.table(waluty)
procenty <- round(frakcje * 100, 2)

procenty_s <- sort(procenty, decreasing = T)

sortVector <- order(procenty)
procenty[sortVector]
procenty[rev(sortVector)]

