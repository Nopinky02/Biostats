
#Nopinky
#Chapter 2
#Working with data classes
#19 ApRIL 2021


library(tidyverse)
library(plotly)



# Random normal data
set.seed(666)
r_dat <- data.frame(dat = c(rnorm(n = 1000, mean = 10, sd = 3),
                            rnorm(n = 1000, mean = 8, sd = 2)),
                    sample = c(rep("A", 1000), rep("B", 1000)))

# Create histogram
#specify data sets specify x
#run each code peace by peace
#position dodge to create spaces
#alpha shutters the shadow a higher number like 0.9 cuvers the histogram
h <- ggplot(data = r_dat, aes(x = dat, fill = sample)) +
  geom_histogram(position = "dodge", binwidth = 1, alpha = 0.8) +
  geom_density(aes(y = 1*..count.., fill = sample), colour = NA, alpha = 0.4) +
  labs(x = "value")
h

# data normality(SHAPIRO TEST GRETER THAN 0.05)
shapiro.test(r_dat$dat)

# group something in to groups (test normality) groups of one kind

# we use the square bracket notation to select only the p-value;
# had we used `[1]` we'd have gotten W
r_dat %>% 
  group_by(sample) %>% 
  summarise(norm_dat = as.numeric(shapiro.test(dat)[2]))

#var is variance 
# VARIANCE MUST NOT ME TWO OR FOUR TIMES GREATER(HOMOSCODACITY) values are similar

r_dat %>% 
  group_by(sample) %>% 
  summarise(sample_var = var(dat))

#After the assumptions run the t-test

#does both test at once 
#run it from the curly function 

two_assum <- function(x) {
  x_var <- var(x)
  x_norm <- as.numeric(shapiro.test(x)[2])
  result <- c(x_var, x_norm)
  return(result)
}

#GROUP BY SAMPLES BECAUSE THERE ARE TWO SAMPLES
r_dat %>% 
  group_by(sample) %>% 
  summarise(sample_var = two_assum(dat)[1],
            sample_norm = two_assum(dat)[2])

# one sample t-test mu-stands for means

# create a single sample of random normal data
set.seed(666)
r_one <- data.frame(dat = rnorm(n = 20, mean = 20, sd = 5),
                    sample = "A")
#compare column/sample to the mean 
#in anova incotrat to t-test the anova test has to be less than 0,05
# shapirotest must be greater to be normal however the t- test must be lower

set.seed(666)
r_two <- data.frame(dat = c(rnorm(n = 20, mean = 4, sd = 1),
                            rnorm(n = 20, mean = 5, sd = 1)),
                    sample = c(rep("A", 20), rep("B", 20)))


# perform t-test
# note how we set the `var.equal` argument to TRUE because we know 
# our data has the same SD (they are simulated as such!)
t.test(dat ~ sample, data = r_two, var.equal = TRUE)

# How sample varies eith data
# perform t-test using `compare_means()`
# note that compare_means() takes the same arguments as t.test()
compare_means(dat ~ sample, data = r_two, method = "t.test", var.equal = TRUE)

# One sided two sample t-test
# is the mean of sample B smaller than that of sample A?
compare_means(dat ~ sample, data = r_two, method = "t.test", var.equal = TRUE, alternative = "less")



#Exercise

#load(data)
# make the codes for ecklonia
ecklonia <- read_csv("ecklonia.csv") %>% 
  gather(key = "variable", value = "value", -species, -site, -ID)

ggplot(data = ecklonia, aes(x = variable, y = value, fill = site)) +
  geom_boxplot() +
  coord_flip()


# filter the data
ecklonia_sub <- ecklonia %>% 
  filter(variable == "stipe_mass")

# then create a new figure
ggplot(data = ecklonia_sub, aes(x = variable, y = value, fill = site)) +
  geom_boxplot() +
  coord_flip() +
  labs(y = "stipe mass (kg)", x = "") +
  theme(axis.text.y = element_blank(),
        axis.ticks.y = element_blank())
 ecklonia_sub %>% 
  group_by(site) %>% 
  summarise(stipe_mass_var = two_assum(value)[1],
            stipe_mass_norm = two_assum(value)[2])




#ANOVA CHAPTER 7

#IF ASUMTIONS ARE NOT NORMAL(ASK GOOGLE)


datasets:: ChickWeight

# First grab the data
chicks <- as_tibble(ChickWeight)

# Then subset out only the sample sets to be compared
chicks_sub <- chicks %>% 
  filter(Diet %in% c(1, 2), Time == 21)

#P-VALUE IS GRETER THAN 0,05 SO THERE IS NO DIFFERENCE
compare_means(weight ~ Diet, data = chicks_sub, method = "t.test")

#FUNCTION aov ANOVA function
chicks.aov1 <- aov(weight ~ Diet, data = filter(chicks, Time == 21))
summary(chicks.aov1)

summary(aov(weight ~ Diet, data = filter(chicks, Time %in% c(0))))

summary(aov(weight ~ Diet, data = filter(chicks, Time %in% c(10))))

summary(aov(weight ~ Diet, data = filter(chicks, Time %in% c(21))))

chicks.aov2 <- aov(weight ~ as.factor(Time), data = filter(chicks, Time %in% c(0, 2, 10, 21)))
summary(chicks.aov2)

summary(aov(weight ~ Diet + as.factor(Time), data = filter(chicks, Time %in% c(0, 21))))

summary(aov(weight ~ Diet * as.factor(Time), data = filter(chicks, Time %in% c(4, 21))))
# anova allows you two compare two varibles at a time without decresing the  credebility

#Multiple factor anova

























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































