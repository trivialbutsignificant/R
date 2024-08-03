#Find the factorial of a number
{
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
  No_of_students_Msc <- 0
  No_of_students_BS <- 0
  for(i in 1:length(rollNo))
  {
    if(as.integer(rollNo[i] / 10^6) == 0 )
    {
      No_of_students_BS <- No_of_students_BS + 1
    }
    else if (as.integer(rollNo[i] / 10^9) == 0)
    {
      No_of_students_Msc <- No_of_students_Msc + 1
    }
  }
  print( No_of_students_BS)
  print( No_of_students_Msc)
}

#Cricket Problem
{
  setwd("/home/luna-art/Desktop/MSc Statistics/1st Sem/MTH208/Worksheet2")
  cricket <- read.csv("battingbowling.csv")
  first_question <- cricket$Bowling <= 40 & cricket$Batting >=25
  first_answer <- cricket[first_question,"X"]
  cat("First answer is:\n")
  for(i in 1:length(first_answer))
  {
    cat(i,". ",first_answer[i],"\n",sep="")
  }
  india_players <- 0
  australia_players <- 0
  england_players <- 0
  newzealand_players <- 0
  pakistan_players <- 0
  southafrica_players <- 0
  team <- cricket[first_question,"Team"] 
  for(i in 1:length(team))
  { 
    if(team[i] == "India")
    {
      india_players <- india_players + 1
    }
    else if(team[i] == "Australia")
    {
      australia_players <- australia_players + 1
    }
    else if(team[i] == "England")
    {
      england_players <- england_players + 1
    }
    else if(team[i] == "New Zealand")
    {
      newzealand_players <- newzealand_players + 1
    }
    else if(team[i] == "Pakistan")
    {
      pakistan_players <- pakistan_players + 1
    }
    else if(team[i] == "South Africa")
    {
      southafrica_players <- southafrica_players + 1
    }
  }
  maximum <- max(india_players,australia_players,england_players,newzealand_players,pakistan_players,southafrica_players)
  {
    if (india_players == maximum)
    {
      cat("Second answer is India\n")
    }
    else if (australia_players == maximum)
    {
      cat("Second answer is: Australia\n")
    }
    else if (england_players == maximum)
    {
      cat("Second answer is: England\n")
    }
    else if (newzealand_players == maximum)
    {
      cat("Second answer is: New Zealand\n")
    }
    else if (pakistan_players == maximum)
    {
      cat("Second answer is: Pakistan\n")
    } 
    else if (southafrica_players == maximum)
    {
      cat("Second answer is: South Africa\n")
    }
  }
  minimum <- min(india_players,australia_players,england_players,newzealand_players,pakistan_players,southafrica_players)
  {
    if (india_players == minimum)
    {
      cat("Third answer is: India\n")
    }
    else if (australia_players == minimum)
    {
      cat("Third answer is: Australia\n")
    }
    else if (england_players == minimum)
    {
      cat("Third answer is: England\n")
    }
    else if (newzealand_players == minimum)
    {
      cat("Third answer is: New Zealand\n")
    }
    else if (pakistan_players == minimum)
    {
      cat("Third answer is: Pakistan\n")
    } 
    else if (southafrica_players == minimum)
    {
      cat("Third answer is: South Africa\n")
    }
  }
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
  plot(func(1:1000))
  abline(h=exp(1),col='red')
}

