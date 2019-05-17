#Extra kolom aanmaken 'leeftijd'
library(eeptools)
results1$leeftijd <- floor(age_calc(as.Date(results1$geboortedatum), units = "years"))

#Boxplot
boxplot(leeftijd, main="Leeftijd van de deelnemers", yaxt='n')
axis(side=2, at=seq(0, 100, by = 5))

#standaardafwijking
sd(leeftijd)
