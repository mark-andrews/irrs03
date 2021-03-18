library(tidyverse)
library(readxl)

anorexia_df <- read_csv("anorexia.csv")
weight_df <- read_csv("https://raw.githubusercontent.com/mark-andrews/irrs03/master/data/weight.csv")


# view top 15 rows
print(weight_df, n = 15)
glimpse(weight_df)
summary(weight_df)


summarize(weight_df, 
          avg_weight = mean(weight), 
          avg_height = mean(height),
          stdev_weight = sd(weight),
          stdev_height = sd(height),
          n = n())

# split apply combine
summarize(group_by(weight_df, gender), 
          avg_weight = mean(weight), 
          avg_height = mean(height),
          stdev_weight = sd(weight),
          stdev_height = sd(height))

summarize(group_by(weight_df, gender, race), 
          avg_weight = mean(weight), 
          avg_height = mean(height),
          stdev_weight = sd(weight),
          stdev_height = sd(height),
          n = n())


# dplyr verbs -------------------------------------------------------------

# * select
# * rename
# * slice
# * filter
# * mutate
# * arrange

select(weight_df, gender, height, weight)

select(weight_df, contains('eight'))

select(weight_df, starts_with('w'), starts_with('h'))

select(weight_df, ends_with('t'))

select(weight_df, gender:weight)

select(weight_df, 5:8)

rename(weight_df, id = subjectid, sex = gender)

# slice
slice(weight_df, -(1:3))

# filter
filter(weight_df, height > 180)

filter(weight_df, height > 180, gender == 'Female')
filter(weight_df, (height > 180) | (gender == 'Female'))

# mutate 
mutate(weight_df, tall = height >= 180)

mutate(weight_df, height = height/100)

weight_df <- mutate(weight_df, 
                    tall = height >= 180,
                    height = height/100)

mutate(weight_df, 
       height = height/100,
       tall = height >= 180)
       
# sorting
arrange(weight_df, height) # sort by height acsending
arrange(weight_df, desc(height)) # sort by height descending
arrange(weight_df, age, height)

# %>% 

x <- c(3, 4, 7)
sqrt(x)
mean(log(sqrt(x)))

# equiv to sqrt(x)
x %>% sqrt()

# log(sqrt(x))
x %>% sqrt() %>% log()

# mean(log(sqrt(x)))
x %>% sqrt() %>% log() %>% mean()

weight_df %>% 
  select(gender, height, weight) %>% 
  filter(height > 180)

# layer 
ggplot(weight_df,
       aes(x = height, y = weight)
) + geom_point(size = 0.5)

ggplot(weight_df,
       aes(x = height, y = weight, colour = gender)
) + geom_point(size = 0.5)

ggplot(weight_df,
       aes(x = height, y = weight)
) + geom_point(size = 0.5) + 
  stat_smooth(method = 'lm', se = FALSE)

ggplot(weight_df,
       aes(x = height, y = weight, colour = gender)
) + geom_point(size = 0.5) + 
  stat_smooth(method = 'lm', se = FALSE, fullrange = TRUE)

ggplot(weight_df,
       aes(x = height, y = weight, colour = gender)
) + geom_point(size = 0.5) + 
  stat_smooth(method = 'lm', se = FALSE, fullrange = TRUE) +
  theme_classic()


ggplot(weight_df, aes(x = height)) + 
  geom_histogram(binwidth = 2, colour = 'white')

ggplot(weight_df, aes(x = height, fill = gender)) + 
  geom_histogram(binwidth = 2, colour = 'white')

ggplot(weight_df, aes(x = height, fill = gender)) + 
  geom_histogram(binwidth = 2, 
                 position = 'dodge',
                 colour = 'white')

ggplot(weight_df, aes(x = height, fill = gender)) + 
  geom_histogram(binwidth = 2, 
                 position = 'identity',
                 colour = 'white')

ggplot(weight_df, aes(x = height, fill = gender)) + 
  geom_histogram(binwidth = 2, 
                 alpha = 0.75,
                 position = 'identity',
                 colour = 'white')

ggplot(weight_df, aes(x = gender, y = height)) +
  geom_boxplot(width = 0.25, outlier.size = 0.5)
