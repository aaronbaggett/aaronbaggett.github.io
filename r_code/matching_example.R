# Read in df_1
df_1 <- read.csv("http://aaronbaggett.com/data/df_1.csv")

# Create df_2
df_2 <- data.frame(region= 0, 
  x = sample(seq(-2, 2, .05), 10, replace = TRUE), 
  y = sample(seq(0.5, 4.5, .05), 10, replace = TRUE))

# Objective:
# I would like to apply the value of region in df_1 to region in df_2 when 
# x and y from df_2 are between xmin and xmax & ymin and ymax in df_1.
# In other words, are the coordinates in df_2[1, ] inside region 1, 2, 3, …, 6 and so on?
