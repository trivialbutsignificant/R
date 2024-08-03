#Find the factorial of a number
{
  fact <- function(n)
  {
    ans=prod(1:n)
    return(ans)
  }
  fact(100)
}

#Euler's Number
{
  eulerNo <- function(n)
  {
   ans <- (1 + 1/n)^n
   return(ans)
  }
  eulerNo(100)
}

#Finding Seat Number using Roll Number
{
  seat <- read.csv("https://dvats.github.io/assets/course/mth208/seating.csv")
  rollNo <- seat$Roll.No == "241080070"
  seatNo <- seat[rollNo, "Seat.Number"]
  print(seatNo)
}

#Loading the locally store csv file
{
  seat <- read.csv("seating.csv")
  head(seat)
  tail(seat)
  dim(seat)
  str(seat)
}

#Finding number of MSc and BS using roll number
{
  seat <- read.csv("https://dvats.github.io/assets/course/mth208/seating.csv")
  rollNo <- seat$Roll.No
  No_of_students_Msc <- sum(nchar(as.character(rollNo))==6)
  No_of_students_BS <- sum(nchar(as.character(rollNo))==9)
  cat("Number of BS students:", No_of_students_BS)
  cat("\nNumber of MSc students:", No_of_students_Msc)
}

#Cricket Problem
{
  setwd("/home/luna-art/Desktop/MSc Statistics/1st Sem/MTH208/Worksheet2")
  cricket <- read.csv("battingbowling.csv")
  #head(cricket)
  all_rounders <- subset(cricket, Bowling<40 & Batting>25)
  all_rounders
  cat("First answer is:",all_rounders$X,sep="\n* ")
  team <- data.frame(table(all_rounders$Team))
  answer <- team$Var1[which.max(team$Freq)]
  cat("Second answer is: ",as.character(answer),sep="")
  answer <- team$Var1[which.min(team$Freq)]
  cat("\nThird answer is: ",as.character(answer),sep="")
}

#Plot a line
{
  plot(0:10 , type="l")
}

#Plot e
{
  func <- function(n)
    {
      return((1+1/n)^n)
    }
  plot(func(1:1000),cex=0.01)
  abline(h=exp(1),col='red')
}
