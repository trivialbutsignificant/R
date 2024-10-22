install.packages("rbenchmark")
library(Rcpp)
library(rbenchmark)

addR <- function(x,y)
{
  return(x + y)
}

cppFunction('int addC(int x, int y){
  int sum = x + y;
  return sum;
}')

addR(4,10)
addC(4,10)

EucR <- function(x, y)
{
  rtn <- sqrt(sum( (x-y)^2 ))
  return(rtn)
}

# In C++ using Rcpp

cppFunction('double EucC(NumericVector x, NumericVector y) {
double track = 0;
int n = x.size();
for(int i = 0; i < n; i++){
track = track + pow( (x[i] - y[i]), 2);
}
track = sqrt(track);
return track;
}
')

x <- 1:1e7
y <- 1:1e7
# all.equal checks whether result is the same
all.equal(EucR(x, y),EucC(x, y))
benchmark(EucR(x, y),EucC(x, y), replications = 100)

func <- function(vec)
{
  n <- length(vec)
  # for tracking sum and log
  sum.log <- 0
  log.of.vec <- numeric(length(n))
  # calculating logs and sum for each element
  for(i in 1:n)
  {
    log.of.vec[i] <- log(vec[i])
    sum.log <- sum.log + log.of.vec[i]
  }
  # fraction
  frac <- log.of.vec/sum.log
  return(frac)
}
funcR <- function(vec)
{
  temp <- log(vec)
  return(temp/sum(temp))
}
cppFunction('NumericVector funcC(NumericVector x) {
int l = x.size();
int sum = 0;
double temp[l];
for(int i = 0 ; i < l; i++)
            {
            temp[i] = log(x[i]);
            sum = sum + temp[i]
            }
//for (int i=0 ; i<l; i++)
     //       {
//ans[i] = temp[i]/sum;
//}
int ans[l];

return(temp/sum);
}')
benchmark()
