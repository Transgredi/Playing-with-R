library(PogromcyDanych)

head(koty_ptaki)

sort(koty_ptaki$waga)

koty_ptaki[order(koty_ptaki$waga, decreasing = T),]


head(auta2012, 3)
str(auta2012)
colnames(auta2012)

mean(auta2012$Cena.w.PLN)

hist(auta2012$Cena.w.PLN/1000, breaks = 200)

range(auta2012$Cena.w.PLN)

boxplot(auta2012$Cena.w.PLN, outline = F)

quantile(auta2012$Cena.w.PLN, c(0.01, 0.1, 0.25, 0.5, 0.75, 0.90, 0.99))

cor(auta2012$Cena.w.PLN, auta2012$Rok.produkcji)

srednie <- tapply(auta2012$Cena.w.PLN, auta2012$Rodzaj.paliwa, mean, na.rm = T)
barplot(srednie/10e2, las = 2)

boxplot(auta2012$Przebieg.w.km, horizontal = T, range = 0)


auta2012wybrane <- auta2012[auta2012$Przebieg.w.km < 1000000, ]

summary(auta2012wybrane$Przebieg.w.km)
boxplot(auta2012wybrane$Przebieg.w.km, horizontal=TRUE, range=0)

hist(auta2012wybrane$Przebieg.w.km, col = "red", breaks = 200)

plot(auta2012wybrane$Przebieg.w.km, auta2012wybrane$Cena.w.PLN, log="xy", pch=".")