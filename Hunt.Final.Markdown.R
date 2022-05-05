library(readr)
Sous.vide <- read_csv("~/Desktop/Salmonella Sous Vide Plate counts SCW.csv")
hist(Sous.vide$`Average log`)
#Boxplot 
boxplot(Sous.vide$Reduction ~ Sous.vide$Temp, 
     data = Sous.vide,
     xlab = "Temperature ºF", ylab = "Log reductions log10 CFU/g", main = "Total Log Reductions during Sous Vide Cooking", 
     subset = Sous.vide$Reduction > 0, axis(side = 2, at=1, 2, 3, 4, 5))
plot(Sous.vide$Reduction ~ Sous.vide$Time, 
     data = Sous.vide)
boxplot(Sous.vide$Reduction ~ Sous.vide$Temp, data = Sous.vide)
#Shapiro Test
shapiro.test(Sous.vide$Reduction)   
#Barplot 130
TotalReduction <- c(5.72, 6.74, 6.74)
barplot(TotalReduction)
barplot(TotalReduction, xlab = "Times in Minutes", ylab = "Total Reduction log10 CFU/g", names.arg = c( "64.5", "86.0", "107.5"), main = "Total Log Reductions at 130º F")
#Barplot 125
onetwentyfiveReductions <- c(6.26, 6.88, 6.19, 7.28)
barplot(onetwentyfiveReductions, xlab = "Times in Minutes", ylab = "Total Reduction log10 CFU/g", names.arg = c("150.0", "193.5", "258.0", "322.5"), main = "Total Log Reductions at 125º F") 
#Barplot 115
onefifteenreductions <- c(0.26, 2.01)
barplot(onefifteenreductions, xlab = "Times in Minutes", ylab = "Total Reduction log10 CFU/g", names.arg = c("150", "420"), main = "Total Log Reductions at 115º F", ylim = c(0,6))
