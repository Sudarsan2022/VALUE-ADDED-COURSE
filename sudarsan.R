# INSTALL LIBRARIES

library(robotstxt)
library(rvest)

#CHECK WHETHER THE WEBSITE IS ALLOWED TO SCRAP


path= paths_allowed("https://www.imdb.com/chart/top/")

url<- "https://www.imdb.com/chart/top/"

my_html <- read_html(url)

my_tables <- html_nodes(my_html,"table")

View(movie_table)

movies <- movie_table[,2:3]

View(movies)

str(movies)

write.csv(movies,"My_movies.csv")
