#Nopinky Velani
#Biostatistics
#Data Manipulation, Anlyses and Visualisation
#Quiz 1
# 20/04/2021

#Question 1

#List the various data classes and give an explanation and example for each class?

1. character-are generic: you can write methods to handle specific classes of object they represents real and complex numbers to 15 significant digits
   which will be 15 on machines supportin, creates a character vector of the specified length and attempts to coerce its argument to character type.

2.numeric (real/ decimal)- A numeric is a more general test of an object being interpretable as numbers, It creates a double-precision vector of the specified 
  length with each element equal to 0 and s an internal generic primitive function: you can write methods to handle specific classes of objects, see InternalMethods. 

3.integer- An integer eates or tests for objects of type "integer". Integer vectors exist so that data can be passed to C or Fortran code which expects them, and so that (small)
  integer data can be represented exactly and compactly, integer creates a integer vector of the specified length and as.integer attempts to coerce its argument to be of integer type
4.logical- Logical vectors are coerced to integer vectors in contexts where a numerical value is required, with TRUE being mapped to 1L, FALSE to 0L and NA to NA_integer_. Thet also Create or test for objects of type "logical", and the basic logical constants.

5.complex- A complex is a Basic functions which support complex arithmetic in R, in addition to the arithmetic operators +, -, *, /, and ^.

#List some of the functions used to view your data in R

1.class() 
2.typeof() 
3.length()
4.attributes() 
  

#Discuss skewness and Kurtosis 

skewness-The skewness of a data population is defined by the following formula, where ??2 and ??3 are the second and third central moments.
         Intuitively, the skewness is a measure of symmetry. As a rule, negative skewness indicates that the mean of the data values is less than
         the median, and the data distribution is left-skewed. Positive skewness would indicate that the mean of the data values is larger than the median, and the data distribution is right-skewed
 
Kurtosis- The excess kurtosis of a univariate population is defined by the following formula, where ??2 and ??4 are respectively the second and fourth central moments. 
          Intuitively, the excess kurtosis describes the tail shape of the data distribution. The normal distribution has zero excess kurtosis and thus the standard tail shape. 
          It is said to be mesokurtic. Negative excess kurtosis would indicate a thin-tailed data distribution, and is said to be platykurtic. Positive excess kurtosis would indicate a fat-tailed distribution, and is said to be leptokurtic
#Question 2
datasets:: Orange

#datasets:: Orange is a 


#Apply the correct functions to show the first 6 and last 6 rows, column names and summary statistics of the data
Orange <- datasets::Orange
glimpse(Orange)
head(Orange)
tail (Orange)
str(Orange)
summary(Orange)
names(Orange)
?Orange

#Determine the Mean, Median and Standard deviation of the age and circumference of the oranges for each of the trees

# What is the mean of the age column of orange ?
mean(Orange$age)

## What is the mean of the column circumference of orange ?
mean(Orange$circumference)

#What is the Median of the age column of orange ?
median(Orange$age)

# What is the Median of the column circumference of orange ?
median(Orange$circumference)


#What is the Standard deviation of the age column of orange ?
sd(Orange$age)

#What is the Standard deviation of the column circumference of orange ?
mean(Orange$circumference)  
   
#Determine, by using the appropriate functions in R, the skewness and Kurtosis for the Orange data   



#Using the summarise function, determine the minimum, maximum, first and third quantiles for the circumference of the
oranges.






#Question 3
#Explain the following functions

#mutate()-mutate() adds new variables and preserves existing ones; transmute() adds new variables and drops existing 
         ones. New variables overwrite existing variables of the same name. Variables can be removed by setting their value to NULL.

#select()- Select (and optionally rename) variables in a data frame, using a concise mini-language that makes it easy
          to refer to variables based on their name (e.g. a:f selects all columns from a on the left to f on the right). 

#group_by()-group_by() takes an existing tbl and converts it into a grouped tbl where operations are performed 
          "by group". ungroup() removes grouping.

#filter()-The filter() function is used to subset a data frame, retaining all rows that satisfy your conditions

#seperate()-Separation occurs in binomial response models when a combination of the predictor variables perfectly predict a level of the response.
          In such a case the estimates of the coefficients for these variables diverge to (+/-)infinity, and the numerical algorithms typically fail
   
   