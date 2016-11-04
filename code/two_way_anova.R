# --- Two-Way ANOVA Example --- #

# Load package libraries
library(ggplot2)
library(car)
library(dplyr)
library(lsr)
library(ez)

# Read in data
gaf_data <- read.csv("~/Dropbox/UMHB/Teaching/Video Tutorials/Two-Way ANOVA/gaf_data.csv")

# Descriptive statistics by factors
gaf_summ <- gaf_data %>% 
  group_by(gender, treatment) %>% 
  summarize(n = length(gaf),
    min = min(gaf),
    max = max(gaf),
    mean = mean(gaf),
    sd = sd(gaf))

# Shapiro Wilks' test of normality
gaf_data %>%
    group_by(gender, treatment) %>%
    summarise(sw_sig = shapiro.test(gaf)$p.value)

# Levene's test of homogeneity of variances
leveneTest(gaf ~ treatment*gender, data = gaf_data)

ablines <- gaf_data %>% 
  group_by(gender, treatment) %>% 
  summarize(q25 = quantile(gaf, 0.25),
    q75 = quantile(gaf, 0.75),
    norm25 = qnorm(0.25),
    norm75 = qnorm(0.75),
    slope = (q25 - q75) / (norm25 - norm75),
    int = q25 - slope * norm25) %>%
  select(gender, treatment, int, slope)

# QQ plot for normal distribution of DV by factors
ggplot(data = gaf_data, aes(sample = gaf)) + geom_point(stat = "qq") +
  geom_abline(data = ablines, aes(intercept = int, slope = slope), col = "blue") + 
  facet_grid(gender ~ treatment) + 
  scale_y_continuous(name = "GAF Score") + 
  scale_x_continuous(name = "Theoretical Quantiles")

# Line plot of GAF score by factors
ggplot(data = gaf_summ, aes(x = treatment, y = mean, 
  group = gender, shape = gender)) +
  geom_point(size = 4.25) + geom_line(size = 0.75) +
  scale_shape_discrete(name = "Gender",
    breaks = c("female", "male"),
    labels = c("Female", "Male")) +
  scale_x_discrete(name = "\nTreatment Condition",
    breaks = c("bpt", "cbt", "psychoanalytic"),
    labels = c("Brief Psychotherapy", "Cognitive Behavior Therapy", 
      "Psychoanalytic Therapy")) +
  scale_y_continuous(name = "Mean GAF Score\n",
    limits = c(45, 70),
    breaks = seq(45, 70, 5)) + 
  theme_bw() + theme(axis.title.x = element_text(face = "bold", size = 17),
    axis.text.x  = element_text(size = 12)) + 
  theme(axis.title.y = element_text(face = "bold", size = 17),
    axis.text.y  = element_text(size = 12)) + 
  theme(legend.title = element_text(size = 17, face = "bold")) + 
  theme(legend.text = element_text(size = 12))

# Two-way ANOVA using base methods (SS = type 3)
gaf_aov <- aov(gaf ~ treatment*gender, data = gaf_data)
summary(gaf_aov)
TukeyHSD(gaf_aov)
etaSquared(gaf_aov, type = 3)

# Two-way ANOVA using ezANOVA (SS = type 3)
ez_gaf_aov <- ezANOVA(data = gaf_data,
  dv = gaf,
  wid = id,
  between = .(gender, treatment),
  detailed = TRUE,
  type = 3,
  return_aov = TRUE)

print(ez_gaf_aov)
