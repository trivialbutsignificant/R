getwd()
install.packages("imager")
library(imager)
dog <- load.image("dog.jpeg")
plot(dog)
mat.dog <- as.array(dog[,,1,])
print("Hi")
dist <- matrix(0, nrow=dim(mat.dog)[1], ncol = dim(mat.dog)[2])
{
  for(i in 1:dim(dist)[1])
  {
    for(j in 1:dim(dist)[2])
    {
      dist[i,j] <- norm(mat.dog[i,j,] - c(0,1,0), '2')
    }
  }
  minimum <- min(dist)
  dist
}
minimum
help(norm)
norm(mat.dog[600,1,] - c(0,1,0), "2")
mat.dog
