#Deliverable 1
library(dplyr)
install.packages("dplyr")
library('tidyverse')
mechaCar_mpg <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F) #import and read csv into dataframe
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechaCar_mpg)#perform linear regression
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechaCar_mpg)) #use summary function to find p-value and r-squared value
#Deliverable 2
suspension_coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F) #import and read csv into dataframe
total_summary <- suspension_coil%>% summarize(mean=mean(PSI),
                                              median=median(PSI),
                                              var=var(PSI),
                                              sd=sd(PSI),
                                              .groups = 'keep')
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI),
                                                                             median=median(PSI),
                                                                             var=var(PSI),
                                                                             sd=sd(PSI),
                                                                             .groups = 'keep')
#Deliverable 3
t.test(suspension_coil$PSI, mu=1500)
lot1 <- subset(suspension_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_coil, Manufacturing_Lot=='Lot2')
lot3 <- subset(suspension_coil, Manufacturing_Lot=='Lot3')
t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)
