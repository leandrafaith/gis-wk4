#library(usethis)
#library(gitcreds)
library(tidyverse)

csv <- read_csv(here("data", "Gender Inequality Index (GII).csv"), skip=5, n_max=189)

clean_csv <- csv %>%
  select(c("HDI Rank", "Country", "2010", "2019"))

world_map <- st_read(here("data", "World_Countries__Generalized_.shp"))