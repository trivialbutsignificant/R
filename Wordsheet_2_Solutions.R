#Factorial of a Number
factorial1 <- function(n)
{
  ans <- 1
  for(i in 1:n)
  {
    ans <- ans*i
  }
  return(ans)
}
factorial(45)

#Factorial second way
factorial2 <- function(n)
{
  return(prod(1:n))
}
factorial2(54)

#Euler Number
euler <- function(n)
{
  ans <- (1 + 1/n)^(n)
  return(ans)
}
euler(1000000)

#Finding the seat number
seat <- read.csv("https://dvats.github.io/assets/course/mth208/seating.csv")
myrow <- seat$Roll.No == 241080070
myseat <- seat[myrow, "Seat.Number"]
myseat

#Locally loading seat number
seat <- read.csv("seating.csv")

#Calculate number of MSc and BS Student enrolled
seat <- read.csv("seating.csv")
MSc <- seat$Roll.No >= 1e7
sum(MSc)
BS <- seat$Roll.No <= 1e6
sum(BS)
