# nopinky Velani
#Chapter 2
#Assignment
#19 ApRIL 2021

#Section 1
# C is the correct answer


# End of question1 --------------------------------------------------------



#Section 2
# Load packages

#dplyr package
library(dplyr)
#dplyr package
library(dslabs)
library(ggplot2)



Murders1 <- murders
glimpse(Murders1)
head(Murders1)
tail (Murders1)
str(Murders1)
summary(Murders1)
?murders

# Paragraph 
#The data shows gun murder data from FBI reports shows the US states population and the total number of gun murders in each state.
# In this data the state of California situated in the west region had the highest a highest population of 37253956 and the highest
#total number of gun murders which is 1257.

Code_slct.p.s <- Murders1 %>% 
  select(state, population)


Remove_flo <- Murders1[Murders1$state != "Florida",]
  
no_south <- Murders1[Murders1$region != "South",]
# When the south region is removed only 34 states can be observed


# Calculate the population sizes of both  the South and West regionally
South.pop <- Murders1 %>% 
  filter(region == "South") %>% 
  summarise(South.pop  = sum(population))


West.pop <- Murders1 %>% 
  filter(region == "West") %>% 
  summarise(west.pop  = sum(population))

#Create a new data frame with only the population size of the Northeast region

NE.reg <- Murders1 %>%  
  filter(region == "Northeast")


#Create two plots of your choice and explain visible trends


data("murders")
ggplot(data = murders, aes(x = abb, y = total)) +
     geom_point() +
       geom_line(aes(group = region))
     
     

ggplot(NE.reg, aes(x = region , y = population)) +
  geom_line(aes(group = state), colour = "salmon") +
  facet_wrap(~state, nrow = 3) +
  labs(x ="population", y ="total",  
       title = "state population")


#Create a new data frame where the total>20 but <100 and to exclude the value 120

Total <- Murders1 %>% 
  filter(total > 20) %>% 
  filter(total < 100)




#Create an object, containing from 10th to 24th row and 26th row. Hint: consider using the slice() function.

#Slicing
Create_Object <- Murders1
slice(10:24, 26)

# Slicing 
Create_Obj <- Murder_data %>% 
  slice(10:24, 26)


#Use as_tibble to convert the murders data table into a tibble and save it in an object called murders_tibble.

murders_tibble <- as_tibble(Murders1)


#Use the group_by function to convert murders into a tibble that is grouped by region.


tibble_region <- as_tibble(Murder_data) %>% 
  group_by(region)



# End of question 2 -------------------------------------------------------



#Section3
#Load data
library(dplyr)
library(dslabs)
data(heights)


#Explore the datasets using the various exploring functions. Such as glimpse(), head(), tail () and many others

heights1 <- heights
glimpse(heights1)
head(heights1)
tail (heights1)
str(heights1)
summary(heights1)
?heights



#Write a paragraph describing the heights dataset Write a paragraph describing the heights dataset
#The hight data set shows the difference in height between females and males it shows a variation in suze between males and females 
#when calculating the central measures of tendency the highest sd, average how ever the maximum hight is prominant amongst males
#with a minimum of 51 one percent higher than that of males

# Determine the average and standard deviation for males and females. Then calculate the median, minimum and maximum values. 

  
  heights %>% 
  filter(sex == "Female") %>% 
  summarise(min_fem = min(height),
            median_fem = median(height),
            max_fem = max(height),
            ave_fem = mean(height),
            sd_fem = sd(height))
heights %>% 
  filter(sex == "Male") %>% 
  summarise(min_mal = min(height),
            med_mal = median(height),
            max_mal = max(height),
            ave_mal = mean(height),
            sd_mal = sd(height))






# End of question 3 -------------------------------------------------------





#Section 4

  x <- c( 1, 6, 21, 19 , NA, 73, NA)
  y <- c(NA, NA, 3, NA, 13, 24, NA)
  
  summary(x)
  # 2 missing elements
  summary(y)
  # 4 missing elements

  
 
  

# End of question 4 -------------------------------------------------------


  

#Section 5
  
  
Seasonal_data <- data.frame(year = c(2015, 2016, 2017, 2018),
                            winter = c(41, 39, 47, 40),
                            spring = c(41, 46, 57, 45),
                            summer = c(75, 52, 85, 66),
                            Autumn = c(57, 66, 52, 56))

#Using the data above, design an hypothesis, then create two plots and write a paragraph discussing your findings


  
  
  
ggplot() +
    geom_line(data = Seasonal_data, aes(x = year, y = summer), colour = "black") +
    labs(x = "Year", y = "Temperature (F)") +
    ggtitle("Average Winter temperatures over a period of 4 years (2015 to 2018)")

 


ggplot(data = Seasonal_data , aes(x = year, y = summer)) +
  geom_bar(stat = "identity", color = "black", fill = "black") +
  labs(x = "Year", y = "Temperature (F)") +
  ggtitle("Average summer temperatures over a period of 4 years (2015 to 2018)")

# The average summer temperatures reaches up to 75F in  2015 and decreases to its lowest point  2016 which is 52f and increased to its peak 
# of 85F in 2017, and decreases again in 2018 reaching up to 66F .The summer temperatures vary  through out the years  in terms of their maximum value.


cats_data <-  tibble(cats = c("A", "B", "C"),
                   position = c("1-2-3", "3-1-2", "2-3-1"),
                   minutes = c(3, 3, 3),
                   seconds = c(12, 44, 15))
cats_data


#Using the separate() function split the position column into new three columns. The new column names will be
#first_place, second_place and third_place.

# separating
Sep_cats <- cats_data %>%
  separate(col = "position", into = c("first_place", "second_place", "third_place"), sep = "-")

#uniting
unite_cats <- Sep_cats %>%
  unite(minutes, seconds, col = "total_time", sep =":")



# End of question 5 -------------------------------------------------------







#Question6

library(tidyverse)
library(lubridate)

ls("package:datasets")


datasets::trees

treesdata1 <- datasets::trees
str(trees)

glimpse(treesdata1)
head(treesdata1 )
tail (treesdata1)
str(treesdata1)
summary(treesdata1)
?treesdata1


# Group_by
treesdata1 <- datasets::trees
treesdata2 <- treesdata1 %>% 
     group_by(Girth, Height) %>% 
     summarise(mn.Volume = mean(Volume),
      sd.Volume = sd(Volume))


# group_by is used to creates summary statistic by group.

#select and mutate
treedata3 <- treesdata2 %>% 
select(Girth, Height) %>%
  mutate(across(!Height, as.factor))

# select is used to select values from specific columns
# mutate was used to  add new variables and preserves existing; transmute drops existing variables.


#gather 
gat.trees <- gather(treesdata1, key = "Girth",
             value = "Volume", Height)
# was used to collects a set of column names and places them into a single "key" column.

# filter
filt.trees <- treesdata1 %>% 
    filter( Height== 80)

# filter was used to is used to subset a data frame, retaining all rows that satisfy your conditions

#Spread was used to turns a pair of key:value columns into a set of tidy columns


#joining
#join was used was used to paste togethermultiple colums into one

  Unite_trees <- treesdata1 %>%
  unite(Height, Girth, col = "Girth", sep = "/")  

# arrange 
  Arr.trees <- treesdata1  %>%
              arrange(Height)
#Arrange was used to arranging rows in ascending order 


#seperate
Sep_trees <- Unite_trees %>%
  separate(col = Girth, into =c("Height", "Girth")) 

#separate was used to seperate data

