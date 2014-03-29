---
layout: post
title: Reading Secure Data Into R from Dropbox
tags: default
---

It's easy to read data into R from an unsecure URL.  The base function ```url``` allows for reading a variety of file types into your current R session.  See ```?url``` for details.  However, using ```url()``` is limited to unsecure (i.e., http://) URLs.  No problem.  It's just as easy to read in data from a secure (i.e., https://) URL via the ```getURL``` function in the ```RCurl``` package.  However, let's say you'd like to read in a data file stored in Dropbox.  That's a problem.  ```getURL()``` will not parse data files from Dropbox.  Otherwise, ```getURL``` works nicely.  I ran into this conundrum over the weekend when I had a .csv file that was too large for GitHub.

### I'd Prefer GitHub, But...
Since 2013, files above 50 MB are [not allowed to be pushed to GitHub](https://help.github.com/articles/working-with-large-files).  This is when storing files in Dropbox can be handy.  However, since 2012, Dropbox has made all public links and shared documents [secure](https://www.dropbox.com/help/16/en).  Still, reading data into R from a secure file location in Dropbox is not as easy as simply invoking ```getURL()```.  Luckily, [Christopher Gandrud](http://CRAN.R-project.org/package=repmis) wrote a function precisely for this purpose in his package ```repmis```.

### Step 1: Generate a Link
First, generate a link for your data file locally or from the Dropbox website.  The data file I'm reading into my R session is stored on my hard drive in a folder I've set to sync with Dropbox.  If you have Dropbox installed, it's easy to generate a shared link.  I generated one locally like this:

![Share Dropbox Link window](http://aaronbaggett.com/img/db_grab.png)

### Step 2: Use the ```repmis::source_DropboxData``` Function
Once the link has been copied to your clipboard, reading the file into R is as easy as invoking Gandrud's ```source_DropboxData``` function.  It works like this:


{% highlight r %}
library(repmis)
baby_wt <- source_DropboxData(file = "baby_wt.csv", 
  key = "6gndxisvu2weekk", sep = ",", header = TRUE)
{% endhighlight %}


You'll notice the ```source_DropboxData``` function is really straightforward.  In this case, the file I'm reading in is a .csv file called ```baby_wt.csv```, which is indicated following the ```file = ``` command.  When you generate a shared link, Dropbox will assign an alphanumeric key unique to that file's URL, which, similarly, is indicated following the ```key = ``` command.  After that, simply tell ```source_DropboxData``` what kind of character separation is being used and whether or not the file has a header, and you're set.

### Step 3: Let's Check it Out!
Let's make sure the ```baby_wt.csv``` data file was read in properly.  The data are from a low birth weight study reported in the third edition of Hosmer, Lemeshow, & Sturdivant's text [*Applied Logistic Regression*](http://www.amazon.com/Applied-Logistic-Regression-David-Hosmer/dp/0470582472/ref=sr_1_1?s=books&ie=UTF8&qid=1396032229&sr=1-1).  We could quickly table the mean birth weights of babies born to mothers who smoked during pregnancy and those born to mothers who did not smoke during pregnancy.


{% highlight r %}
library(plyr)
ddply(baby_wt, .(mom_smokes), summarize, 
  mean_wt = mean(baby_bwt), 
  sd_wt = sd(baby_bwt))
{% endhighlight %}

{% highlight r %}
##   mom_smokes mean_wt sd_wt
## 1 Non-Smoker   6.735 1.659
## 2     Smoker   6.114 1.455
{% endhighlight %}


If we really wanted to be cute we could construct box plots for birth weights of babies by mother's smoking status.  Really, this is just an excuse to use [Karthik Ram's](https://github.com/karthik) sweet, new, [```wesanderson``` package](https://github.com/karthik/wesanderson) for coloring graphics.


{% highlight r %}
library(ggplot2)
library(wesanderson)
ggplot(data = baby_wt, aes(x = mom_smokes, y = baby_bwt, 
  fill = mom_smokes)) + geom_boxplot(color = I("grey35")) + 
  xlab("\nMother's Smoking Status") + 
  ylab("Baby Birth Weight\n") +
  ggtitle("Baby Birth Weight as a \nFunction of Mother's Smoking Status\n") +
  theme_bw() + theme(legend.position = "none") +
  scale_fill_manual(values = wes.palette(2, "FantasticFox"))
{% endhighlight %}

<img src="http://aaronbaggett.com/img/unnamed-chunk-3.png" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" style="display: block; margin: auto;" />


So that's it.  As you can see, when you need to store a data file outside of GitHub, Dropbox can be a nice alternative.  Thanks to Christopher Gandrud's ```source_DropboxData``` function in the ```repmis``` package we can read data into R from a secure Dropbox URL.

<br>

#### EDIT: 03/29/2014
The ```wesanderson``` package is now on CRAN.  Of course you can always get the latest updates by installing the development version.

{% highlight r %}
devtools::install_github("karthik/wesanderson")
{% endhighlight %}