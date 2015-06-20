# Klasa Date służy do opisywania dat z dokładnością do dnia.
# Na datach można wykonywać operacje takie jak odejmowanie dwóch dat,
# dodawanie liczby do dnia itp.

# Klasa POSIXct, służy do opisywania czasu z dokładnością do sekundy.
# Czas jest pamiętany jako liczba sekund od określonego początku.
# Sufiks ct oznacza calendar time.

# Klasa POSIXlt, służy do opisywania czasu w formacie listy wartości.
# Sufiks lt oznacza local time.

as.Date("2015-02-22")
as.Date("02/22/2015", format = "%m/%d/%Y")

czas1 <- as.POSIXct("2015-02-13 12:56:26")
czas2 <- as.POSIXct("14022015 12:56:26", format = "%d%m%Y %H:%M:%S")

czas2 - czas1

Sys.time()

czas1 <- as.POSIXlt("2015-02-13 12:56:26")
czas2 <- as.POSIXlt("14022015 12:56:26", format = "%d%m%Y %H:%M:%S")

czas2 - czas1

czas1$sec
czas1$min
czas1$h
czas1$zone
czas1 + 30

library(lubridate)
now()
today()
ymd_hms("2015-02-14 23:59:59")
czas3 <- mdy_hm("02/14/15 08:32")