install.packages('dplyr')
library(dslabs)
library(dplyr)

#In-class Practice 1

#Question1
murders <- mutate(murders, population_in_millions = population / 10^6)

#Question2
murders <- mutate(murders, rate = total / population * 100000)
murders <- mutate(murders, rank = rank(-rate))

#Question3
filter(murders, state == "New York")


#Question4
filter(murders, state %in% c("New York", "Texas"))

#Question5
no_florida <- filter(murders, state != "Florida")

#Question6
murders_nw <- filter(murders, region %in% c("Northeast ", " West ")

#Question7
my_states <- filter(murders, region%in% c("Northeast", "West") & rate <1)
my_states
select(my_states, state,rate,rank)
                                         
#In-class Practice 2                     

#Question 1
my_states <- murders %>% 
  mutate (rate =  total / population * 100000, rank = rank(-rate)) %>% 
  filter (region %in% c("Northeast", "West") & rate < 1) %>% 
  select (state, rate, rank)
      
      