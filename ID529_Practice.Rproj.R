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
