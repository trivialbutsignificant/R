library(tidyverse)
library(rvest)
html <- read_html('https://www.iitk.ac.in/math/faculty')
html
class(html)
# extracting all tags with class = head3. The
# "." indicates class.
name <- html_elements(html, ".head3")
name <- html_elements(name, "a")
name <- html_text(name)
pdoc <- read_html('https://iitk.ac.in/math/visitors-post-doctoral-fellow')
pdoc <- html_elements(pdoc, ".head2")
pdoc
#pdoc <- html_elements(pdoc, "h3")
pdoc
pdoc <- html_text(pdoc)
pdoc
mov <- read_html('https://editorial.rottentomatoes.com/guide/best-netflix-movies-to-watch-right-now/')
mov <- html_elements(mov, ".article_movie_title")
mov <- html_elements(mov, "a")
mov <- html_text(mov)
mov
rank <- read_html('https://editorial.rottentomatoes.com/guide/best-netflix-movies-to-watch-right-now/')
rank <- html_elements(rank, ".countdown-index")
rank <- html_text(rank)
rank
rank <- substring(rank, first = 2)
rank
