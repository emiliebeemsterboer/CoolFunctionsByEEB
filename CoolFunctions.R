# Cool functions!
# Name creator: Emilie Beemsterboer


#Function remind_me()-----------------------------------------------------------
# This is a function that returns my household chores and my grocery list.

remind_me <- function(){
  household_chores <- c("clean bathroom", "fold laundry", "clean kitchen",
                        "vacuum clean", "grocery shopping")
  grocery_list <- c("apples", "sourdough bread", "yoghurt", "mate", "grapes",
                    "cereal", "hagelslag", "butter", "kimchi", "coffee")
  to_do <- cat("You have to do this today!:", 
               "\n\nHousehold chores:", paste(household_chores, collapse = "\n"),
               "\n\nGrocery list:", paste(grocery_list, collapse = "\n"))
  return(to_do)
}


#Function cheat()---------------------------------------------------------------
# This is a function that returns the code answers to a couple of R exercises
# as strings. 

cheat <- function(exercise_nr){
  if (exercise_nr == "3.1.1"){
    code <- 'programming_exam_grades <- rnorm(65, mean = 7, sd = 1) hist(programming_exam_grades)'
    return(cat("Answer to exercise", exercise_nr, ":  \n", code))
    
  } else if (exercise_nr == "3.1.2"){
    code <- 'data_schiphol <- read.csv("https://bit.ly/3GLVQ86", header = TRUE)
    plot(data_schiphol$DATE, data_schiphol$TMIN)'
    return(cat("Answer to exercise", exercise_nr, ":  \n", code))
    
  } else if (exercise_nr == "3.1.12"){
    code <- 'install.packages("quantmod")
      library("quantmod")
      #Plotting the 2023 stocks for Duolingo; a popular language learning app.
      
      start = as.Date("2023-01-01") 
      end = as.Date("2023-12-31")
      getSymbols("DUOL", src = "yahoo", from = start, to = end)
      chart_Series(DUOL, type = "line", name = "DUOL Stocks")'
    return(cat("Answer to exercise", exercise_nr, ":  \n", code))
    
  } else{
    return("Sorry, I don't have the the solution to that exercise...")
  }
}


#Function make_WA_art()---------------------------------------------------------
# This is a function that makes random (not really symmetric) art with 
# Wes Anderson colour palettes from https://github.com/karthik/wesanderson/blob/master/README.md

library(tidyverse)
install.packages("wesanderson")
library("wesanderson")

make_WA_art <- function(seed, n) {
  
  set.seed(seed)
  # Choose a random palette from the Wes Anderson package and set palette
  palette_name <- sample(names(wes_palettes), 1)
  palette <- wes_palettes[[palette_name]]
  
  # A DF with random values that we can plot with
  art_data <- tibble(
    x0 = runif(n),
    y0 = runif(n),
    x1 = x0 + runif(n, min = -.5, max = .5),  
    y1 = y0 + runif(n, min = -.5, max = .5),  
    shade = runif(n, min = 0, max = 1),   
    size = runif(n, min = 1, max = 2) 
  )
  # Plotting the segments with the palettes
    ggplot(data = art_data, aes(
      x = x0,
      y = y0,
      xend = x1,
      yend = y1,
      colour = shade,
      size = size
    )) +
    geom_segment(show.legend = FALSE) +
    coord_fixed() +
    scale_colour_gradientn(colours = palette) + 
    scale_size(range = c(0, 15)) + 
    theme_void() +
    ggtitle(paste("Inspired by", palette_name))+
    theme(plot.title = element_text(size = 15, hjust = 0.5, colour = "darkred"))
}

# Test it like this!
make_WA_art(seed = 2, n = 200)


