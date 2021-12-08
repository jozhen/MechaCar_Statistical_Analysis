##Deliberable 1
library(dplyr)
library(tidyverse)
mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_table))
##Deliverable 2 
suspen_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 
total_summary <- suspen_table%>%summarize(Mean=mean(PSI),Median=median(PSI),Var=var(PSI),SD=sd(PSI),.groups = 'keep')
lot_summary <- suspen_table%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI),Median=median(PSI),Var=var(PSI),SD=sd(PSI),.groups = 'keep')
##Deliverable 3
t.test(suspen_table$PSI,mu=1500)
lot1 <- subset(suspen_table, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspen_table, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspen_table, Manufacturing_Lot=="Lot3")
t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
##Deliverable 4
t.test(mecha_table$mpg,mu=35, alternative = "greater")
