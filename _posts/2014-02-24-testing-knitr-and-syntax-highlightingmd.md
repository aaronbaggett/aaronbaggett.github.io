---
layout: post
title: Testing knitr and Syntax Highlighting
tags: default
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring web pages (click the **Help** toolbar button for more details on using R Markdown).

When you click the **Knit HTML** button a web page will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


{% highlight python %}
summary(cars)
{% endhighlight %}

When we summarize a data frame, the output includes quartiles, minimum and maximum values, as well as mean and median.

{% highlight r %}
##      speed           dist    
##  Min.   : 4.0   Min.   :  2  
##  1st Qu.:12.0   1st Qu.: 26  
##  Median :15.0   Median : 36  
##  Mean   :15.4   Mean   : 43  
##  3rd Qu.:19.0   3rd Qu.: 56  
##  Max.   :25.0   Max.   :120
{% endhighlight %}

{% highlight python %}
library(ggplot2) # This will load the library

head(diamonds, 10)
{% endhighlight %}

The head function in R will print the first six rows of the data frame.  We can tell R to print more by simply adding, where X is the number of rows we would like to view.

{% highlight python %}
##   carat       cut color clarity depth table price    x    y    z
## 1  0.23     Ideal     E     SI2  61.5    55   326 3.95 3.98 2.43
## 2  0.21   Premium     E     SI1  59.8    61   326 3.89 3.84 2.31
## 3  0.23      Good     E     VS1  56.9    65   327 4.05 4.07 2.31
## 4  0.29   Premium     I     VS2  62.4    58   334 4.20 4.23 2.63
## 5  0.31      Good     J     SI2  63.3    58   335 4.34 4.35 2.75
## 6  0.24 Very Good     J    VVS2  62.8    57   336 3.94 3.96 2.48
{% endhighlight %}

{% highlight s-plus %}
qplot(price, data = diamonds, geom = "histogram")

nums <- c(1:1000)
{% endhighlight %}

{% highlight s-plus %}
library(RCurl)
test_user = function(site = 'https://bitbucket.org/',
                     candidates = c(0:9, letters)) {
  for (i in candidates) {
    if (!url.exists(paste0(site, i))) message(i)
    Sys.sleep(runif(1, 0, .1)) # be nice
  }
}
# examples
test_user()
# two-letter names
test_user(candidates = as.vector(outer(letters, letters, 'paste0')))
# check github
test_user('https://github.com/')
{% endhighlight %}

{% highlight python %}
import re
for test_string in ['555-1212', 'ILL-EGAL']:
    if re.match(r'^\d{3}-\d{4}$', test_string):
        print test_string, 'is a valid US local phone number'
    else:
        print test_string, 'rejected'
{% endhighlight %}

![plot of chunk unnamed-chunk-2](http://aaronbaggett.com/img/figure/unnamed-chunk-2.png) 

