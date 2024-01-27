# CoolFunctionsByEEB
## This is a repository for functions during the Programming in Pyschological Science class at the UvA. 

When you open the file "CoolFunctions.R" in this repository you can get started with these cool functions:
* remind_me()
* cheat()
* make_WA_art()

### remind_me() function
This function simply reminds a user (*just me lol*) some to do's. Specifically a household chore list and a grocery list.
You can run it without any arguments and just in base R. 


### cheat() function
This function allows you to cheat on your programming exam! You can use it without any specific packages, just with base R. Enter your exercise number as a string in the argument like so:
```
cheat("3.3.1") 
```
Note! It's a function in progress... It only holds the answers for programming exercies 3.3.1, 3.3.2, and 3.3.12


### make_WA_art() function
This funtion allows you to generate random art (with a Wes Anderson movie colour palette) by providing only two arguments: a seed and an n!
```
make_WA_art(seed = 333, n = 111)
```
Note! The higher your n, the more objects in the art plot. Play around with it to see what your art looks like with a higher or smaller n. The funciton also relies on a couple of packages namely: ggplot2, tibble (a.k.a. just run the tidyverse package) and a wesanderson colour palatte package ("wesanderson"). 
The seed you enter does not matter, it will choose a random palette for the different seeds! Your plot will also return the movie title/palette name as the title to your plot/artwork.



## Have fun!!!











