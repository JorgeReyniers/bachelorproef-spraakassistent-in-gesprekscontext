#Extra kolom aanmaken 'leeftijd'
library(eeptools)
results$leeftijd <- floor(age_calc(as.Date(results1$geboortedatum), units = "years"))