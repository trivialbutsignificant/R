#Find the factorial of a number
fact <- function(n)
{
  ans=as.double(1)
  for(i in 1:n)
  {
    ans=ans*i
  }
  return(ans)
}
fact(100)

#Euler's Number
eulerNo <- function(n)
{
  ans <- (1 + 1/n)^n
  return(ans)
}
eulerNo(100)

#Finding Seat Number using Roll Number
seat <- read.csv("https://dvats.github.io/assets/course/mth208/seating.csv")
rollNo <- seat$Roll.No == "241080070"
seatNo <- seat[rollNo, "Seat.Number"]
print(seatNo)

#Loading the locally store csv file
seat <- read.csv("seating.csv")
head(seat)
tail(seat)
dim(seat)
str(seat)
