

fish_data <- read.csv("data/Gaeta_etal_CLC_data_1.csv")

#this creates new table catergorizing fish by size
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small")) %>%
  filter(scalelength > 1)


fish_mod <- filter(fish_data_cat, scalelength > 1)
