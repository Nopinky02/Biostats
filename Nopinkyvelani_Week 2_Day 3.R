#NopinkyVelani
#chAPTER 9
#correlation
#21/04/2021



library(tidyverse)
library(ggpubr)
library(corrplot)


#The closer the colleration is to one the stronger the colerration 
# Any thing higher than 0,5 is highley correlated 
# This is used when you want to compare two variables
# kENDILL RANK DOES NOR  REQUIRE NORMALISATION 

# Select function is common in the test

# Load data
ecklonia <- read_csv("C:/Users/BCB User/Desktop/R data/R_Work/Intro_R/ecklonia.csv")



# Create ordinal data
ecklonia$length <- as.numeric(cut((ecklonia$stipe_length+ecklonia$frond_length), breaks = 3))

cor.test(x = ecklonia$stipe_length, ecklonia$frond_length,
         use = "everything", method = "pearson")
# Run test on any variable
cor.test(ecklonia$length, ecklonia$digits)

# oNE PLANEL VISUALL
#wHEN EVER YOU PLOT SOME THING YOU WILL DO A TEST AND THE OTHER WAY AROUND

ecklonia_norm <- ecklonia_sub %>% 
  gather(key = "variable") %>% 
  group_by(variable) %>% 
  summarise(variable_norm = as.numeric(shapiro.test(value)[2]))
ecklonia_norm

cor.test(ecklonia$primary_blade_length, ecklonia$primary_blade_width, method = "kendall")


# Calculate Pearson r beforehand for plotting
r_print <- paste0("r = ", 
                  round(cor(x = ecklonia$stipe_length, ecklonia$frond_length),2))

# Then create a single panel showing one correlation

r_print <- paste0("r = ", 
                  round(cor(x = ecklonia$stipe_length, ecklonia$frond_length),2))

# Then create a single panel showing one correlation

ggplot(data = ecklonia, aes(x = stipe_length, y = frond_length)) +
  geom_smooth(method = "lm", colour = "grey90", se = F) +
  geom_point(colour = "mediumorchid4") +
  geom_label(x = 300, y = 240, label = r_print) +
  labs(x = "Stipe length (cm)", y = "Frond length (cm)") +
  theme_pubclean()

# you need to know when to use correlation



# Part 2 ------------------------------------------------------------------



library(tidyverse)
library(ggpubr)
library(corrplot)
library(dlply)
library(ggplot2)
library(reshape)
library(hrbrthemes)

#Find out what the dlply usage ; splits data frame, apply function and return results in a list.

# Load data
ecklonia <- read_csv("C:/Users/BCB User/Desktop/R data/R_Work/Intro_R/ecklonia.csv")

ecklonia_sub <- ecklonia %>% 
  select(-species, - site, - ID)

ecklonia_pearson <- cor(ecklonia_sub)
ecklonia_pearson

# Find a code (For heat map in r)
# Because the numbers do not have a huge variation we donnot have to standerdiise the numbers ( donot use scales)


#Heatmap 



melted <- melt(ecklonia_pearson)


melted <- melt(ecklonia_pearson)

ggplot(data = melted, mapping = aes(X1, X2, fill = value)) +
  geom_tile()
ggplot(data = melted, mapping = aes(X1, X2, fill = value)) +
  geom_tile()

