
library(dplyr)
install.packages("dplyr")
library('tidyverse')
mechaCar_mpg <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F) #import and read csv into dataframe
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechaCar_mpg)#perform linear regression
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechaCar_mpg)) #use summary function to find p-value and r-squared value
