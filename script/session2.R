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
gapminder %>% filter(year == 1957)

library(ggplot2)
ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point() + 
  labs(title = "life expectancy and GDP", x = "GDP per capita", y = "life expactancy")

ggplot(gapminder, aes(x = year, y = lifeExp, color = continent)) + 
  geom_point() + 
  labs(title = "life expectancy over the years", x = "year", y = "life expactancy")

ggplot(gapminder, aes(x = pop, y = lifeExp, color = continent)) + 
  geom_point() + 
  labs(title = "life expectancy and population size", x = "population size", y = "life expactancy")

ggplot(gapminder, aes(x = year, y = lifeExp, by = country, color = continent)) + 
  geom_line()

ggplot(gapminder, aes(x = continent, y = lifeExp, color = continent)) + 
  geom_violin() + 
  geom_boxplot()

ggplot(gapminder, aes(x = year, y = lifeExp, color = continent)) + 
  geom_smooth(method = "lm")

ggplot(gapminder, aes(x = year, y = lifeExp, by = country)) + 
  geom_line(color = "blue") +
  geom_point()

ggplot(gapminder, aes(x = year, y = lifeExp)) + 
  #geom_point() +
  geom_line(aes(by = country)) +
  geom_smooth(method = "lm")

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point(alpha = .5) + scale_x_log10() +
  geom_smooth(method = "lm")

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point(alpha = .5) + scale_x_log10() +
  geom_smooth(method = "lm")

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point(aes(alpha = year)) + scale_x_log10()

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point(col = 4, size = 1) + 
  scale_x_log10() +
  geom_smooth(method = "lm", col = 2, size = 1.5)

##substr
starts.with <- substr(gapminder$country, start = 1, stop = 1)
az.countries <- gapminder[starts.with %in% c("A", "Z"), ]

ggplot(data = az.countries, aes(x = year, y = lifeExp, color=continent)) +
  geom_line() + facet_wrap( ~ country) +
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank())


