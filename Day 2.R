#logical operators

! TRUE
TRUE & TRUE
TRUE | FALSE
xor(TRUE, FALSE)
xor(FALSE, TRUE)
xor(TRUE,TRUE)
xor(FALSE,FALSE)
! c(TRUE, FALSE, TRUE)
c(TRUE, TRUE) & c(TRUE, FALSE)
c(TRUE, TRUE) | c(TRUE, FALSE)
xor(c(FALSE, TRUE, TRUE), c(TRUE, FALSE, TRUE))
5 > 1
5 >= 5
5 == 5
5 == 4
5 != 5
5 != 4
"apple" != "banana"
x <- 1:10 * 10
y <- seq(10, 100, by = 10)
x == y
identical(x,y)

all(c(TRUE, TRUE, TRUE))
any(c(FALSE, TRUE, FALSE))
all(c(TRUE, NA, TRUE))
any(c(FALSE, TRUE, NA))
all(c(TRUE, NA, TRUE))
any(c(FALSE, TRUE, NA))
all(c(TRUE, NA, TRUE), na.rm = TRUE)
any(c(FALSE, TRUE, NA), na.rom = TRUE)

5 %in% c(1,2,3,4,5)
'a' %in% c('a', 'b', 'c')
c(1,2,3) %in% c(1,3,5)

x <- 1:5
y <- x * 3
y %% 2 == 0
areEven <- y %% 2 == 0
y[areEven]
which(areEven)
y[which(areEven)]


#conditionals

x <- sample.int(n = 10, size = 1)
if (x >= 9) {
  print(x)
}

characters <- list(
  harry = list(pet = 'hedwig'),
  ron = list(pet = c('scabbers', 'pigwidgeon')),
  hermione = list(pet = 'crookshanks'),
  hagrid = list(pet = c('fang', 'aragog')),
  dumbledore = list(pet = 'fawkes'),
  filch = list(pet = 'mrs. norris'),
  fred = list(),
  george = list ()
)
random_character <- characters[[sample.int(n = length(characters), size = 1)]]
random_character_pet <- random_character$pet

if (! is.null(random_character_pet)) {
  print(random_character_pet)
}

paste0 (x,y)
x <- "hello"
y <- "world"
z <- "!"
paste(x, y, z)
paste0(x, y,z)

z <- " !"
paste(x, y, z)
paste0(x, y,z)

z <- "!"
paste0(x, y, z)
paste0(x, y, z)

x <- "hello "
paste0(x, y, z)

random_int <- sample.int(n = length(characters), size = 1)
random_character <- characters[[random_int]]
random_character_name <- names(characters)[random_int]
random_character_pet <- random_character$pet

if (is.null(random_character_pet)) {
  print(paste0(random_character_name, " doesn't have any pets!"))
} else {
  print(paste0(random_character_name, "'s (pet(s):"))
  print(random_character_pet)
}

x <- sample.int(n = 100, size = 1)

if (x <= 33) {
  print("x is small (i.e., between 1 and 33)")
} else if (x <= 66) {
  print("x is medium (i.e., between 34 and 66)")
} else {
  print("x is large (i.e. between 67 and 100)")
}


# loops

for (i in 1:25) {
  print(i^2)
}

animals <- c('sloths', 'platypus', 'sea otters', 'ringtail lemurs')
for (animal in animals) {
  print(paste0(animal, " rule!"))
}
for (animal in animals) {
  print(paste(animal, "rule!"))
}

state_data <- list
for (state in state.name)
new_data <- read.csv(file = paste0(state, ".csv"))  
state_data[[state]] <- state_data

value <- 0
while (value < 100) {
  value <- value + sample.int(n = 10, size = 1)
  print(value)
}

n_iterations <- 0
value <- 0
while (value < 100) {
  n_iterations <- n_iterations + 1
  value <- value + sample.int(n = 10, size = 1)
}
print(n_iterations)
print(value)

iterations_needed <- numeric()
for (i in 1:10000) {
  n_iterations <- 0
  value <- 0
  while (value < 100) {
    n_iterations <- n_iterations + 1
    value <- value + sample.int(n = 10, size = 1)
  }
  iterations_needed <- c(iterations_needed, n_iterations)
}
summary(iterations_needed)


# project workflows in R

install.packages("here")
library(here)

readr::read_csv(here("data/PHPop.csv"))
install.packages("tidyverse")
library(tidyverse)
library(readr)

data <- read_csv("data/PHPop.csv")
data

library(readxl)

read.csv("data/tb.csv")
library(ggplot2)

tb <- read.csv("data/tb.csv")

ggplot(tb, aes(x = lgu, facility)) +
  geom_point()

ggplot(tb, 
       aes(
         x = lgu, cxr_screen,
         y = cxr_pos,
       color = facility
       )) +
  geom_point()
ggplot(tb, aes(x = lgu)) +
  geom_bar()

ggplot(tb, 
       aes(
         x = lgu, cxr_screen,
         color = diag_total,
         size = cxr_pos,
       )) +
  geom_point()
