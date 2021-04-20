#Nopinky
#Chapter 2
#Working with data classes
#19 ApRIL 2021

datasets::BOD

# Finding more about the data 
str(BOD)
ls("package:datasets")

# more examples of the above
datasets::Nile
str(Nile)
?Nile

datasets::
str

#To load data in to environmental pane
pines <- Loblolly
str(pine)#structure of data
class(pine$height)# loking at a class of certain column 




# Part two ----------------------------------------------------------------



#Load built in data  as an R object
pine <- Loblolly
str(pine)
head(pine, 3)
tail(pine, 3)
pines
summary(pine)
# Calculate sample size 
library(tidyverse)
chicks <- as_tibble(ChickWeight)

# note the distinction between "nrow' and the 
# 'true' sample size
nrow(chicks)
unique(chicks$Chicks )


# Mean for Chickweights

# Load packages
library(tidyverse)

# Load data

datasets::ChickWeight
chicks %>% 
  filter(Time == 20)
group_by(Diet)
chicks %>% 
  summarise(mean_wt = mean(weight))
mean(chicks$weight)
chicks %>% 
  summarise(mean_wt = round(mean(weight), 1))
chicks %>% 
  summarise(med_wt = median(weight))
kurtosis(chicks$weight)
quantile(chicks$weight)




