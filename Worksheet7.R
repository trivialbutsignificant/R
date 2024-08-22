library(tidyverse)
library(rvest)
#html_elemets
#read_html
#html_text
#html_attrs
mov <- read_html("https://editorial.rottentomatoes.com/guide/best-netflix-movies-to-watch-right-now/")
mov <- html_elements(mov,".article_movie_title a")
mov <- html_attr(mov, "href")
mov
num_movies <- length(mov)
revs <- numeric(length= length(mov))
tomato <- numeric(length= length(mov))
popcorn <- numeric(length= length(mov))
for(i in 1:num_movies)
{
  html_movie <- read_html(mov[i])
  all_rts <- html_elements(html_movie,"rt-link")
  for(j in 1:length(all_rts))
}
html_movie
