# Deliverable 1####################################

library(dplyr)
#reading file

MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar)

#creating linear model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)

#summarize linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar))

#################Deliverable 2 ############################
SuspensionC<- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)
head(SuspensionC)

##Summary
summarize_demo <- SuspensionC %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),StDev=sd(PSI)) 
summarize_demo

##Creating lot summary
lot_summary <- SuspensionC %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),StDev=sd(PSI))
lot_summary


####################################Deliverable 3#######################3
## t-test summary on lots ##

t.test(SuspensionC$PSI,mu = 1500)

### determining PSI fro each lot
t.test(subset(SuspensionC, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(SuspensionC, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(SuspensionC, Manufacturing_Lot=="Lot3")$PSI, mu=1500)






