# Baby Birthweight Example ----------------------------------------------------
# Hosmer et al. (2013, p. 24) -------------------------------------------------
# Applied Logistic Regression -------------------------------------------------

# Load package libraries
library(ggplot2)
library(dplyr)
library(xtable)
library(car)

# Read in data
bwt <- readr::read_csv("http://aaronbaggett.com/data/baby_wt.csv")

# Summary of birth weight by mother's smoking status
(bwt_summ <- bwt %>% 
  group_by(mom_smokes) %>% 
  summarize(n = length(baby_bwt),
    min = min(baby_bwt),
    max = max(baby_bwt),
    mean = mean(baby_bwt),
    sd = sd(baby_bwt)
))

xtable(bwt_summ)

# Distribution of birth weights by mothers' smoking status
ggplot(data = bwt, aes(x = baby_bwt)) + 
  geom_histogram(binwidth = 0.75, color = "white") +
  scale_x_continuous(breaks = seq(0, 12, 2), 
    name = "\nBaby Birth Weight") +
  scale_y_continuous(limits = c(0, 20), breaks = seq(0, 20, 2),
    name = "Frequency\n") + 
  facet_grid(. ~ mom_smokes) + theme_bw() +
  theme(strip.text.x = element_text(size=12, face="bold"),
    axis.title.x = element_text(size=10, face="bold"),
    axis.text.x = element_text(size=10),
    axis.title.y = element_text(size=10, face="bold"),
    axis.text.y = element_text(size=10))

# Plot of differences
ggplot(data = bwt, aes(x = mom_smokes, y = baby_bwt, fill = mom_smokes)) + 
  geom_boxplot() + scale_fill_manual(values = c("indianred1", "dodgerblue2")) +
  scale_x_discrete(name = "\nMothers' Smoking Status") +
  scale_y_continuous(limits = c(0, 12), breaks = seq(0, 12, 2),
    name = "Baby Birth Weight (in lbs.)\n") +
  theme(legend.position = "none", panel.grid.minor = element_blank())

# Test for homogeneity of variance
leveneTest(baby_bwt ~ mom_smokes, data = bwt)

# t-Test comparing differences between smokers and non-smokers
bwt_t <- t.test(baby_bwt ~ mom_smokes, data = bwt, var.equal = TRUE)

#omega squared: Trivial effect
((bwt_t$statistic^2) - 1) / (((bwt_t$statistic)^2) + bwt_t$parameter)

# t-Distribution ($\pm$ 2.6336)
ggplot(data.frame(x = c(-4, 4)), aes(x = x)) +
  scale_x_continuous(breaks = seq(-4, 4, 1), 
    name = expression(paste(italic("df"),"(187)"))) +
  scale_y_continuous(breaks = seq(0.0, 0.4, 0.05), name = "") +
  stat_function(fun = dt, args = list(df = 187),
    xlim = c(2, 4), geom = "area", fill = "tomato", color = "grey35", size = .75) +
  stat_function(fun = dt, args = list(df = 187),
    xlim = c(-2, -4), geom = "area", fill = "tomato", color = "grey35", size = .75) +
  stat_function(fun = dt, args = list(df = 187),
    xlim = c(1, 1), geom = "area", color = "grey35", size = .75) +
  stat_function(fun = dt, args = list(df = 187),
    xlim = c(-1, -1), geom = "area", color = "grey35", size = .75) +
  stat_function(fun = dt, args = list(df = 187),
    xlim = c(2, 2), geom = "area", color = "grey35", size = .75) +
  stat_function(fun = dt, args = list(df = 187),
    xlim = c(-2, -2), geom = "area", color = "grey35", size = .75) +
  stat_function(fun = dt, args = list(df = 187), 
    color = "dodgerblue3", size = 1) + 
  geom_segment(aes(x = -4, xend = 4, y = 0, yend = 0), color = "grey35") + 
  geom_segment(aes(x = -2.6336, y = 0, xend = -2.6336, yend = .1), 
    size = .75, color = "grey35") +
  geom_segment(aes(x = 2.6336, y = 0, xend = 2.6336, yend = .1), 
    size = .75, color = "grey35") + 
  geom_point(aes(x = -2.6336, y = .1), 
    size = 3, color = "grey35") +
  geom_point(aes(x = 2.6336, y = .1), 
    size = 3, color = "grey35") +
  geom_label(aes(x = -2.6336, y = .12, label = "-2.64"), 
    size = 5, color = "grey35") +
  geom_label(aes(x = 2.6336, y = .12, label = "2.64"), 
    size = 5, color = "grey35") +
  theme_bw() +
  theme(axis.title.x = element_text(size = 13, face="bold"),
    axis.text.x = element_text(size = 13),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.grid.major.y = element_blank())
