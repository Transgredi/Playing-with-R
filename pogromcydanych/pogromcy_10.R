TRUE_FALSE_NA <- c(TRUE, FALSE, NA)

tabliczka_dodawania <- outer(TRUE_FALSE_NA, TRUE_FALSE_NA, "|")
rownames(tabliczka_dodawania) <- TRUE_FALSE_NA
colnames(tabliczka_dodawania) <- TRUE_FALSE_NA
tabliczka_dodawania



to_kot <- koty_ptaki$druzyna == 'Kot'
ciezki_kot <- koty_ptaki$waga >= 10

table(to_kot, ciezki_kot)

koty_ptaki$habitat_napis <- as.character(koty_ptaki$habitat)

which(koty_ptaki$habitat_napis %in% c("Azja", "Afryka"))

grep("A", koty_ptaki$habitat_napis)
grep("A", koty_ptaki$habitat_napis, value = T)

#sprawdza czy początek napisu to litera A lub E
grep("^[AE]", koty_ptaki$habitat_napis, value = T)



auta2012$Kolor_napis <- as.character(auta2012$Kolor)
auta2012$Wyposazenie.dodatkowe_napis <- as.character(auta2012$Wyposazenie.dodatkowe)

auta2012$czy_metallic <- grepl("metallic", auta2012$Kolor_napis)
table(auta2012$czy_metallic)


auta2012$maKlimatyzacje <- grepl("klimatyzacja", auta2012$Wyposazenie.dodatkowe_napis)
table(auta2012$maKlimatyzacje)

auta2012$szyby <- grepl(x=auta2012$Wyposazenie.dodatkowe_napis, 
                        pattern="przyciemniane szyby")
table(auta2012$szyby)