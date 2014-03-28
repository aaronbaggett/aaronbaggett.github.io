library(repmis)
library(ggplot2)
#install.packages("devtools")
devtools::install_github("karthik/wesanderson")

library(foreign)

baby_wt <- read.spss("~/Dropbox/UMHB/Teaching/Spring 2014/PSYC 2305/Data/lowbwt.sav", use.value.labels = TRUE, to.data.frame = TRUE)

write.csv(baby_wt, "~/Dropbox/Data/baby_wt.csv")

https://www.dropbox.com/s/6gndxisvu2weekk/baby_wt.csv

baby_wt <- source_DropboxData(file = "baby_wt.csv", 
  key = "6gndxisvu2weekk", sep = ",", header = TRUE)
head(baby_wt)

library(wesanderson)

ggplot(data = baby_wt, aes(x = mom_smokes, y = baby_bwt, 
  fill = mom_smokes)) + geom_boxplot(color = I("grey35")) + 
  xlab("\nMother's Smoking Status") + 
  ylab("Baby Birth Weight\n") +
  ggtitle("Baby Birth Weight as a \nFunction of Mother's Smoking Status\n") +
  theme_bw() + theme(legend.position = "none") +
  scale_fill_manual(values = wes.palette(2, "FantasticFox"))

ddply(baby_wt, .(mom_smokes), summarize, 
  mean_wt = mean(baby_bwt), 
  sd_wt = sd(baby_bwt))
  