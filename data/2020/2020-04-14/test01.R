
library(tidyverse)
polls <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-04-14/polls.csv')
rankings <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-04-14/rankings.csv')
polls 
rankings


polls %>% group_by(critic_name) %>% 
  summarise(n = n()) %>% 
  filter(n != 5)

polls %>% 
  distinct(critic_rols)


tf1 = rankings %>% 
  filter(ID <= 100) %>% 
  mutate(year2 = year %/% 10 * 10) %>% 
  group_by(year) %>% 
  summarise(n = n())

