# This line does .....
composites <- c(4, 6, 8, 9, 10, 12)

# preprocess --------------------------------------------------------------

composites_plus <- composites + 1

# visualization -----------------------------------------------------------

composites_minus <- composites - 1

# foobar ------
my_mean <- function(x) {mean(x, na.rm = T)}

data_df <- data.frame(names = c('alice', 'bob', 'charlie'),
                      ages = c(23, 26, 21),
                      height = c(150, 160, 180),
                      weight = c(75, 65, 86))


# Read in my data ---------------------------------------------------------

anorexia_df <- read_csv("tmp/anorexia.csv")


