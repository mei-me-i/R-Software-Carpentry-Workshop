#read in gapminder.csv file
gapminder <- read.csv("data/gapminder_data.csv")

str(gapminder)

summary(gapminder)
min(gapminder$year)
max(gapminder$year)

summary(gapminder$country)

typeof(gapminder$year)
typeof(gapminder$country)

length(gapminder)
dim(gapminder)

ncol(gapminder)
nrow(gapminder)
length(gapminder$country)

colnames(gapminder)
names(gapminder)

head(gapminder, 3)
tail(gapminder, 3)

gapminder[c(12:15),]

library(dplyr)

