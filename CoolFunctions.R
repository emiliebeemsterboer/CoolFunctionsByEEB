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

# This is a funtion that returns the code answers to a couple of R exercises as strings. 

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