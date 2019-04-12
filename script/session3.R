library(dplyr)
gapminder <- read.csv("data/gapminder_data.csv")
str(gapminder)

year_country_gdp <- gapminder %>% select(year,country,gdpPercap)
str(year_country_gdp)

year_country_gdp_euro <- gapminder %>% 
  filter(continent == "Europe") %>% 
  select(year,country,gdpPercap)

gdp_by_continent <- gapminder %>% 
  group_by(continent) %>% 
  summarize(mean_gdp = mean(gdpPercap),
            sd_gdp = sd(gdpPercap))

gdp_by_continent

LE_by_country <- gapminder %>% group_by(country) %>% 
  summarize(mean_LE = mean(lifeExp),
            sd_LE = sd(lifeExp))
LE_by_country[LE_by_country$mean_LE == max(LE_by_country$mean_LE),]
LE_by_country[LE_by_country$mean_LE == min(LE_by_country$mean_LE),]

LE_by_country %>% filter(mean_LE == max(LE_by_country$mean_LE) | 
                           mean_LE == min(LE_by_country$mean_LE))


