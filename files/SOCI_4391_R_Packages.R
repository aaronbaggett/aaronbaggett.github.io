# -------------------------------------------------------------------------
# Installing Add-On R Packages
# Spring 2022
# SOCI 4391-01: Advanced Data Analytics
# -------------------------------------------------------------------------

# PRO TIP:
# Highlight lines 10-18 then press -> Run above

if (! require(tidyverse)){
  install.packages("tidyverse")
}
library(tidyverse)

if (! require(devtools)){
  install.packages("devtools")
}
library(devtools)