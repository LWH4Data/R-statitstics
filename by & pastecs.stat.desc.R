library(pastecs)

#data set
Ex <- data.frame(iris)
summary(Ex)

#statistics(Sepal.Length's statistics of each Species)
by(Ex$Sepal.Length, Ex$Species, stat.desc)
