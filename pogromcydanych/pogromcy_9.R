levels(auta2012$Rodzaj.paliwa)

boxplot(Rok.produkcji ~ Rodzaj.paliwa, auta2012, las = 2)

#zmiana kolejnosci poziomow czynnikow
levels(auta2012$Skrzynia.biegow)
auta2012$Skrzynia.biegow2 <- factor(auta2012$Skrzynia.biegow, 
                                   levels=c("manualna","", "automatyczna"))
levels(auta2012$Skrzynia.biegow2)


# Jeżeli chcemy ,,posortować’’ poziomy zgodnie z pewną cechą ilościową, 
# to wygodne będzie użycie funkcji reorder(). Jako argumenty 
# pobiera ona wektor ze zmienną czynnikową, wektor z dowolną zmienną 
# i funkcję. Dla każdej grupy określonej przez zmienną czynnikową, 
# dla wartości wskazanych przez drugi argument wyznaczana jest wartość 
# funkcji - trzeciego argumentu. Następnie czynniki są porządkowane zgodnie 
# z kolejnością wyników trzeciej funkcji.
# 
# W przykładzie poniżej, rodzaje paliwa są porządkowane zgodnie 
# ze średnim rokiem produkcji aut o określonym rodzaju paliwa. 
# Tak jak się można spodziewać, bardziej ,,nowoczesne’’ paliwa są w autach młodszych.
auta2012$Rodzaj.paliwa.posortowany <- reorder(auta2012$Rodzaj.paliwa, 
                                              auta2012$Rok.produkcji, 
                                              mean)

boxplot(Rok.produkcji ~ Rodzaj.paliwa.posortowany, auta2012)