setwd('C:/Users/MTH/Downloads/worksheet-3-trivialbutsignificant-main/')
getwd()

#Question 1
{
  head <- sum(rbinom(n = 1000, size = 1, prob = 0.5))
  prop <- head/(1000 - head)
  print(prop)
}
{
  head <- sum(rbinom(n = 1000, size = 1, prob = 0.7))
  prop <- head/(1000 - head)
  print(prop) 
}

#Question 2
{
  sample(c("red", "blue", "green"), size = 1, prob = c(3, 2, 2))
}


{
  A <- matrix(c(3, 1, -2, 4, 5, 3, -1, 2, -2), nrow = 3, ncol = 3)
  p<- c(0, 0 ,0)
  for(i in 1:3)
  {
    for(j in 1:3)
      {
        p[i] <- p[i] + A[j,i]^2
      }
    p[i] <- p[i]^(0.5)
  }
  p
  sample( x = 1:3, size = 1, prob = p)
}


