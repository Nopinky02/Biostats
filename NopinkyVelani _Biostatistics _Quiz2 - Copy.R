#NopinkyVelani
#Quize2
#22/April/2021

#Question 1
ls("package:datasets")


#load packages
library(tidyverse)
library(gglpot2)
library(lubridate)
library(Dplyr)
library(plotly)



Orange <- datasets::Orange

Orange1 <- as_tibble(Orange)
head(Orange1)
tail(Orange1)
colnames(Orange1)
summary(Orange1)

Orange1 %>% 
   summarise(length = n())

length(Orange1$age)

data1 <- 

select(Orange1,-Tree)

data2 <- 
select(Orange1,-circumference, -Tree)

data3 <- c(data2)

Centralt <- 

Orange1%>% 
  summarise(mean_wt = mean(age))     
           
mean(Orange1$age)

Orange1 %>% 
 summarise(mean_wt = round(mean(age), 1))
Orange1 %>% 
  summarise(mean_wt = sum(age) / n())


Orange1%>% 
  summarise(med_wt = median(age))


Orange1 %>% 
  summarise(sd_wt = sd(age))

quantile(Orange1$age)


Orange1 %>% 
  summarise(min_wt = min(age),
            qrt1_wt = quantile(age, p = 0.25),
            med_wt = median(age),
            qrt3_wt = median(age, p = 0.75),
            max_wt = max(age))

range(Orange1$age)

Orange1 %>% 
  summarise(lower_wt = range(age)[1],
            upper_wt = range(age)[2])

range(Orange1$age)[2] - range(Orange1$age)[1]

Orange1 %>% 
  summarise(range_wt = range(age)[2] - range(age)[1])

set.seed(666)
Orange_data <- Orange(dat = c(rnorm(n = 35, mean = 922, sd = 492),
                            rnorm(n = 35, mean = 992, sd = 492)),
                    sample = c(rep("A", 35), rep("B", 35)))

# Create histogram
h <- ggplot(data = Orange_data, aes(x = dat, fill = sample)) +
  geom_histogram(position = "dodge", binwidth = 1, alpha = 0.8) +
  geom_density(aes(y = 1*..count.., fill = sample), colour = NA, alpha = 0.4) +
  labs(x = "value")
h

shapiro.test(Orange_data$Orange)


# toothgrowth -------------------------------------------------------------



ToothGrowth1 <- datasets::ToothGrowth

ToothGrowth1 <- as_tibble(ToothGrowth)
head(ToothGrowth1)
tail(ToothGrowth1)
colnames(ToothGrowth1)
summary(ToothGrowth1)

ToothGrowth %>% 
  summarise(length = n())

length(ToothGrowth1$len)

tootdata1 <- 
  
  select(ToothGrowth1,-dose)

Tootdata2 <- 
  select(ToothGrowth1,-supp, -dose)

Toottdata3 <- c(Tootdata2)

Centralt <- 
  
  ToothGrowth1%>% 
  summarise(mean_wt = mean(len))     

mean(ToothGrowth1$len)

ToothGrowth1 %>% 
  summarise(mean_wt = round(mean(len), 1))
ToothGrowth1 %>% 
  summarise(mean_wt = sum(len) / n())


ToothGrowth1%>% 
  summarise(med_wt = median(len))


ToothGrowth1 %>% 
  summarise(sd_wt = sd(len))

quantile(ToothGrowth1$len)


ToothGrowth1 %>% 
  summarise(min_wt = min(len),
            qrt1_wt = quantile(len, p = 0.25),
            med_wt = median(len),
            qrt3_wt = median(len, p = 0.75),
            max_wt = max(len))

range(ToothGrowth1$len)
ToothGrowth1%>% 
  summarise(lower_wt = range(len)[1],
            upper_wt = range(len)[2])

range(ToothGrowth1$len)[2] - range(ToothGrowth1$len)[1]

ToothGrowth1 %>% 
  summarise(range_wt = range(len)[2] - range(len)[1])

set.seed(666)
 tgrowth_data<- ToothGrowth1(dat = c(rnorm(n = 60, mean = 18.8, sd = 7.65),
                            rnorm(n = 60, mean = 18.8, sd = 7.65)),
                    sample = c(rep("A", 60), rep("B", 60)))

# Create histogram
h <- ggplot(data = Orange_data, aes(x = dat, fill = sample)) +
  geom_histogram(position = "dodge", binwidth = 1, alpha = 0.8) +
  geom_density(aes(y = 1*..count.., fill = sample), colour = NA, alpha = 0.4) +
  labs(x = "value")
h



# warpbreaks --------------------------------------------------------------





warpbreaks <- datasets::warpbreaks



warpbreaks1 <- as_tibble(warpbreaks)
head(warpbreaks1)
tail(warpbreaks1)
colnames(warpbreaks1)
summary(warpbreaks1)

warpbreaks1 %>% 
  summarise(length = n())

length(warpbreaks1$breaks)

warpdata1 <- 
  
  select(warpbreaks1,-wool)

warpdata2 <- 
  select(warpbreaks1,-wool, -tension)

warpdata3 <- c(warpdata2)

Centralt <- 
  
  warpbreaks1%>% 
  summarise(mean_wt = mean(breaks))     

mean(warpbreaks1$breaks)

warpbreaks1 %>% 
  summarise(mean_wt = round(mean(breaks), 1))
warpbreaks1 %>% 
  summarise(mean_wt = sum(breaks) / n())


warpbreaks1%>% 
  summarise(med_wt = median(breaks))


warpbreaks1 %>% 
  summarise(sd_wt = sd(breaks))

quantile(warpbreaks1$breaks)


warpbreaks1%>% 
  summarise(min_wt = min(breaks),
            qrt1_wt = quantile(breaks, p = 0.25),
            med_wt = median(breaks),
            qrt3_wt = median(breaks, p = 0.75),
            max_wt = max(breaks))

range(warpbreaks1$breaks)

warpbreaks1 %>% 
  summarise(lower_wt = range(breaks)[1],
            upper_wt = range(breaks)[2])

range(warpbreaks1$breaks)[2] - range(warpbreaks1$breaks)[1]

warpbreaks1 %>% 
  summarise(range_wt = range(breaks)[2] - range(breaks)[1])

set.seed(666)
Orange_data <- warpbreaks1(dat = c(rnorm(n = 54, mean = 28.1, sd = 13.2),
                              rnorm(n = 54, mean = 28.1, sd = 13.2)),
                      sample = c(rep("A", 54), rep("B", 54)))

# Create histogram
h <- ggplot(data = Orange_data, aes(x = dat, fill = sample)) +
  geom_histogram(position = "dodge", binwidth = 1, alpha = 0.8) +
  geom_density(aes(y = 1*..count.., fill = sample), colour = NA, alpha = 0.4) +
  labs(x = "value")
h

shapiro.test(warpbreaks1$breaks)

