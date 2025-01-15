x <- 1
y <- 2
print(x)
print(y)


# ARITHMETIC --------------------------------------------------------------


5 + 4
5 - 4
5 / 2
5*2
5/2
5^2
log2(4)
abs(-5)
sqrt(9)
exp(1)



# ASSIGNING VARIABLES -----------------------------------------------------


my_age <- 99
my_name <- "JB"
# are you a data analyst (yes/no) <==> (TRUE/FALSE)
is_a_data_analyst <- TRUE #boolean values

# is the "are you a data analyst necessary?



# VECTORS -----------------------------------------------------------------


classmate_ages <- c(24, 22, 24, 26, 23)
mean(classmate_ages)
max(classmate_ages)
summary(classmate_ages)
sd(classmate_ages)
var(classmate_ages)
sort(classmate_ages)
prod(classmate_ages)
range(classmate_ages)
length(classmate_ages)



# FACTORS -----------------------------------------------------------------


# create a factor with 5 participants

study_participant_genders <- factor(
  c('non-binary',
    'transgender female',
    'non-binary',
    'cis female',
    'transgender female'))

# quotes needed?
# hitting enter will run latest code only?

table(study_participant_genders)  
levels(study_participant_genders)



# LISTS -------------------------------------------------------------------


harrys_family <- list (
  father = "James Potter",
  mother = "Lily Evans",
  aunt = "Petunia Dursley",
  uncle = "Vernon Dursley",
  cousin = "Dudley Durlsey",
  parents_age = 21,
  adoptive_family_ages = c(44, 50, 18))
$father
harrys_family$father



# DATA FRAMES -------------------------------------------------------------

name age height_com is_from_middle_earth
Tom 4 90 FALSE
Jerry 1 10 FALSE
Logolas 2000 180 TRUE
Gimli 140 137 TRUE

human.data <- data.frame(
  human_name = c("Tom", "Jerry", "Logolas", "Gimli"),
  human_age = c(4, 1, 2000, 140),
  human_height = c(90, 10, 180, 137))
print(human.data)


# INSTALLING PACKAGES -----------------------------------------------------

install.packages("tidyverse")
install.packages("devtools")
library(devtools)
library(tidyverse)

#need to load library every time R is opened?



# GETTING HELP ------------------------------------------------------------

help(lubridate)
help(mean)



# DAY 2 (01/14/25) --------------------------------------------------------

# loops - giving computer tasks to repeat

# logical operators
! TRUE
TRUE & TRUE
TRUE | FALSE

xor(TRUE, FALSE)

help("&")

5 > 1


#any and all functions for evaluating criteria

#%in% = "5 in the c..."


# conditionals
# if - use curly braces
# if pasting with commas in between. sep = ,
# "else if" for more than one block



# loops
# i as iterator
for (i in 1:25)
  print (i^2)

state.name
state.abb


value <- 0
while (value < 100) {
  value <- value + sample.int(n = 10, size = 1)
  print(value)
}

devtools::install_github("ID529/ID529tutorials")
install.packages("devtools")
library(ID529tutorials)
run_tutorial('logic', 'ID529tutorials')




# TUTORIALS ---------------------------------------------------------------

# if

if(TRUE)
  print("hello world")
TRUE
TRUE

x <- 1
print(x)
if (x > 0)
  print("Pokemon Go!")

x <- -2
print(x)

x <- sample(n= 10, size = 1)
if (x > 5) {
  warning("x is greater than 5")
}

x <- 123
if (is.character(x)) {
  print('The Simpsons')
} else {
  print('Sesame Street')
}

if(is.character(x)) {
  print('The Simpsons')
} else if (is.numeric(x)) {
  print('Sesame Street')
} else {
  print ('Doctor Who')

  
# R Projects
# run everything to run everything seamlessly

# importing data in R

library(readr)
  
  
# ggplot
install.packages("palmerpenguins")
library(palmerpenguins)
head(penguins)  

ggplot(penguins, aes(x = bill_length_mm, bill_depth_mm, color = species)) + 
  geom_point ()

ggplot(penguins, aes(x = species)) +
  geom_bar()

install.packages("datapasta")
library(tidyverse)
library(datapasta)
library(ggplot)
install.packages("ggplot2")
library(ggplot2)

read.csv("~/Desktop/ID529/ID529_Practice/PHPop.csv")
PHPop <- read.csv("~/Desktop/ID529/ID529_Practice/PHPop.csv")
PHPop

ggplot(PHPop, aes(x = Population, Province)) +
  geom_point()
