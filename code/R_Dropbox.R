library(repmis)
library(ggplot2)
#install.packages("devtools")
devtools::install_github("karthik/wesanderson")

dealers <- source_DropboxData(file = "dealers.csv", 
  key = "b3zskf22rz93h67", sep = ",", header = TRUE)
head(dealers)

library(wesanderson)

ggplot(data = dealers, aes(x = appearance, y = response_time, 
  fill = appearance)) + geom_boxplot(color = I("grey35")) + 
  xlab("\nCustomer Appearance") + 
  ylab("Salesman Response Time\n") +
  theme_bw() + scale_fill_manual(values = wes.palette(3, "FantasticFox"))
  