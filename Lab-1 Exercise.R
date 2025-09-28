#Lab-1 Exercise
#Variables & Data Types
1.Create Variables to store name, age and check wheather you are a student
name <- "Sarthak"
age <- 21
is_student <- TRUE

#2.Create a vector containing the numbers 1 to 10.
v <- 1:10
print(v)

#3.Create a sequence from 5 to 50 with a step size of 5.
vec <- seq(5, 50, by=5 )
print(vec)

#4.Store the names of 5 fruits in a character vector and display the second and fourth fruit.
fruits <- c("Apple", "Banana", "Cherry", "Grapes", "Pineapple")
print(fruits[c(2,4)])

#5.Create a numeric vector of 10 random numbers between 1 and 100
#and find maximum value, minimum value and mean'
random <- sample(1:100, 10)
print(random)
max_value <- max(random)
print(max_value)
min_value <- min(random)
print(min_value)

#6.Create a data frame with columns: Name, Age, Marks. Enter at least 5 records.
students <- data.frame(
  name = c("John", "Charlie", "Roman", "David", "James"),
  age = c(20, 22, 23, 24, 25),
  marks = c(90, 91, 92, 93, 94)
)
print(students)

#7.Write code to sort the data frame by Marks in descending order. in r language
students_sorted <- students[order(-students$marks), ]
print(students_sorted)


#Operators in R
#1.Perform the following operations
10 + 5      # Addition
10 - 5      # Subtraction
10 * 5      # Multiplication
10 / 5      # Division
10 %% 3     # Modulus (remainder)

#2.Compare if 15 is greater than 10, and if 7 is equal to 7.
15 > 10      
7 == 7 

#3.Create two vectors and perform addition, subtraction and multiplication
a <- c(2, 4, 6, 8)
b <- c(1, 3, 5, 7)
a + b       
a - b     
a * b 

#4.Use logical operators
a > 5        
b <= 4 

#5.
5 %in% a

#6.
x <- c(TRUE, FALSE, TRUE, FALSE)
y <- c(TRUE, TRUE, FALSE, FALSE)

x & y   
x | y      
!x           


#Loops in R
#1.Write a for loop to print numbers from 1 to 10.
for (i in 1:10) {
  print(i)
}

#2.Write a while loop to sum numbers from 1 to 100.
sum_val <- 0
i <- 1
while (i <= 100) {
  sum_val <- sum_val + i
  i <- i + 1
}
print(sum_val)

#3.Write a loop to print only even numbers between 1 and 50.
for (i in 1:50) {
  if (i %% 2 == 0) {
    print(i)
  }
}

#4.Write a loop to print the multiplication table of 7.
for (i in 1:10) {
  print(paste("7 x", i, "=", 7 * i))
}

#5.Create a loop to calculate the factorial of a given number n.
n <- 5
fact <- 1
for (i in 1:n) {
  fact <- fact * i
}
print(paste("Factorial of", n, "is", fact))

#6.Write a nested loop to print a star pattern
rows <- 4
for (i in 1:rows) {
  line <- ""
  for (j in 1:i) {
    line <- paste0(line, "*")
  }
  print(line)
}


#Conditionals in R
#1.Write an if statement to check if a number is positive or negative.
num <- -5
if (num > 0) {
  print("Positive number")
} else {
  print("Negative number")
}

#2.Write an if-else statement to check if a given number is even or odd.
num <- 7
if (num %% 2 == 0) {
  print("Even number")
} else {
  print("Odd number")
}

#3.Write a program to check if a given year is a leap year.
year <- 2024
if ((year %% 4 == 0 & year %% 100 != 0) | (year %% 400 == 0)) {
  print(paste(year, "is a Leap Year"))
} else {
  print(paste(year, "is NOT a Leap Year"))
}

#4.Pass or Fail based on marks
marks <- 35
if (marks >= 40) {
  print("Pass")
} else {
  print("Fail")
}

#5.Nested if-else grading system
marks <- 82
if (marks >= 90) {
  print("Grade A")
} else if (marks >= 75 & marks <= 89) {
  print("Grade B")
} else if (marks >= 60 & marks <= 74) {
  print("Grade C")
} else {
  print("Fail")
}


#Functions in R
#1.Write a function add_numbers(a, b) to return the sum of two numbers.
add_numbers <- function(a, b) {
  return(a + b)
}
add_numbers(5, 3)

#2.Write a function square(n) to return the square of a number.
square <- function(n) {
  return(n^2)
}
square(6)

#3.Write a function to calculate the factorial of a number using recursion.
factorial_recursive <- function(n) {
  if (n == 0 | n == 1) {
    return(1)
  } else {
    return(n * factorial_recursive(n - 1))
  }
}
factorial_recursive(5)

#4.Write a function to check if a number is prime.
is_prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}
is_prime(7)   
is_prime(10)  

#5.Write a function that takes a vector and returns: mean, median & standard deviation
vector_stats <- function(vec) {
  result <- list(
    Mean = mean(vec),
    Median = median(vec),
    StdDev = sd(vec)
  )
  return(result)
}
vector_stats(c(1, 2, 3, 4, 5, 6, 7))

#6.Write a function that accepts a data frame and a column name, and returns the top 5 highest values in that column.
top5_values <- function(df, col_name) {
  col <- df[[col_name]]
  top5 <- sort(col, decreasing = TRUE)[1:5]
  return(top5)
}

# Example usage:
students <- data.frame(
  Name = c("John", "Alice", "Bob", "Emma", "David", "Sophia"),
  Age = c(20, 21, 22, 20, 23, 24),
  Marks = c(85, 92, 78, 88, 95, 89)
)
top5_values(students, "Marks")


#Data Analysis
#1.Load the adult dataset & Display the first 10 row
head(adult)

#2.Find the structure of the dataset.
str(adult)

#3.Find the average age of all individuals.
mean(adult$age, na.rm = TRUE)

#4.Count how many individuals earn >50K and how many earn <=50K.
table(adult$income)

#5.Find the most common occupation.
sort(table(adult$occupation), decreasing = TRUE)[1]

#6.Calculate the average hours-per-week for people earning >50K vs <=50K.
aggregate(hours-per-week ~ income, data = adult, mean)

#7.Create a bar chart showing the distribution of education levels. 
library(ggplot)
ggplot(adult, aes(x = education)) +
  geom_bar(fill = "steelblue") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Distribution of Education Levels", x = "Education", y = "Count")


#Data Analysis
#1.Load the IPL dataset into R & Display the first 10 rows.
head(IPL, 10)

#2.Find the top 5 players with the highest total runs.
top5_runs <- IPL[order(-IPL$Runs), c("Name", "Runs")]
head(top5_runs, 5)

#3.Find the player with the highest batting average.
IPL[which.max(IPL$Ave), c("Name", "Ave")]

#4.Find the correlation between matches played and runs scored.
str(IPL)
# Convert to numeric (safely)
IPL$Matches <- as.numeric(IPL$Matches)
IPL$Runs <- as.numeric(IPL$Runs)
