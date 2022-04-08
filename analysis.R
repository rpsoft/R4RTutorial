library(readr)
library(tidyverse)

# setwd("C:/Users/itstraining/Documents/R4RTutorial")

names <- read_csv("names.csv")
surnames <- read_csv("surnames.csv")
salaries <- read_csv("salaries.csv")

surnames %>% 
  left_join(salaries, by="id") %>% 
  left_join(names, by="id")

mydata <- names %>% 
  right_join(salaries, by="id") %>% 
  left_join(surnames, by="id")


summ <- summary(mydata$salary)
