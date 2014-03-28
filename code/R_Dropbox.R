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
  ggtitle("Response Times of Car Salesmen as a \nFunction of Customer Appearance\n") +
  theme_bw() + theme(legend.position = "none") +
  scale_fill_manual(values = wes.palette(3, "FantasticFox"))

ddply(dealers, .(appearance), summarize, 
  mean_rt = mean(response_time), 
  sd_rt = sd(response_time))
  