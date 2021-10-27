#library(usethis)
#library(gitcreds)
library(sf)
library(tidyverse)
library(here)

csv <- read_csv(here("data", "Gender Inequality Index (GII).csv"),
                skip=5, n_max=189, 
                na = "..")

clean_csv <- csv %>%
  select(c("HDI Rank", "Country", "2010", "2019"))

world_map <- st_read(here("data", "World_Countries__Generalized_.shp"))

#Datatypelist <- clean_csv %>% 
#  summarise_all(class) %>%
#  pivot_longer(everything(), 
#               names_to="All_variables", 
#               values_to="Variable_class")

#shape <- world_map %>%
#  left_join(.,
#        clean_csv,
#        by = c("COUNTRY" = "Country")) %>%
#  mutate(diff = `2019` - `2010`)
