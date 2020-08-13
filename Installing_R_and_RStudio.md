---
output: 
  html_document: 
    keep_md: yes
---

# Installing R and RStudio {#starting}

To get started with R, you need to acquire your own copy. This handout will show you how to download R as well as RStudio, a software application that makes R easier to use. You'll go from downloading R to opening your first R session. 

Both R and RStudio are free and easy to download.

## How to Download and Install R

R is maintained by an international team of developers who make the language available through the web page of [The Comprehensive R Archive Network](https://cloud.r-project.org) (https://bit.ly/2XYLKfG). The top of the web page provides three links for downloading R. Follow the link that describes your operating system: Windows, Mac, or Linux (see below). This handout will cover how to install R on either Windows or macOS.

<div class="figure" style="text-align: center">
<img src="images/cran.png" alt="Comprehensive R Archive Network" width="85%" />
<p class="caption">Comprehensive R Archive Network</p>
</div>

### Windows

To install R on Windows, click the "Download R for Windows" link. Then click the "base" link. Next, click the first link at the top of the new page. This link should say something like "Download R 4.0.2 for Windows" (see below). The link downloads an installer program, which installs the most up-to-date version of R for Windows. Run this program and step through the installation wizard that appears. The wizard will install R into your program files folders and place a shortcut in your Start menu. Note that you'll need to have all of the appropriate administration privileges to install new software on your machine.

<div class="figure" style="text-align: center">
<img src="images/windowsr.png" alt="Installing R for Windows" width="85%" />
<p class="caption">Installing R for Windows</p>
</div>


### macOS

To install R on a Mac, click the "Download R for Mac" link. Next, click on the R-4.0.2.pkg link (see below). An installer will download to guide you through the installation process, which is very easy. The installer lets you customize your installation, but the defaults will be suitable for most users. I've never found a reason to change them. If your computer requires a password before installing new progams, you'll need it here.

<div class="figure" style="text-align: center">
<img src="images/macr.png" alt="Installing R for macOS" width="85%" />
<p class="caption">Installing R for macOS</p>
</div>

## Using R

R isn't a program that you can open and start using, like Microsoft Word or Internet Explorer. Instead, R is a computer language. You use R by writing commands in the R language and asking your computer to interpret them. In the old days, people ran R code in a UNIX terminal window—as if they were hackers in a movie from the 1980s. Now almost everyone uses R with an application called RStudio, and I recommend that you do, too.

<div class="figure" style="text-align: center">
<img src="images/terminal.png" alt="Installing R for macOS" width="85%" />
<p class="caption">Installing R for macOS</p>
</div>


## RStudio

RStudio _is_ an application like Microsoft Word—except that instead of helping you write in English, RStudio helps you write in R. I use RStudio throughout the book because it makes using R much easier. Also, the RStudio interface looks the same for Windows, Mac OS, and Linux. That will help me match the book to your personal experience.

You can [download RStudio](https://rstudio.com/products/rstudio/download/#download) for free (https://bit.ly/3fSmbTS). Just click the "Download RStudio" button and follow the simple instructions that follow. Once you've installed RStudio, you can open it like any other program on your computer—usually by clicking an icon on your desktop. If not, you should check your applications folder. Depending on your computer's operating system, you may want to pin RStudio to your Windows task bar or add it to your macOS dock.


<div class="figure" style="text-align: center">
<img src="images/download.png" alt="Downloading R" width="85%" />
<p class="caption">Downloading R</p>
</div>

When you open RStudio, a window appears with three panes in it. The largest pane is a console window. This is where you'll run your R code and see results. The console window is exactly what you'd see if you ran R from a UNIX console or the Windows or Mac GUIs. Everything else you see is unique to RStudio. Hidden in the other panes are a text editor, a graphics window, a debugger, a file manager, and much more. You'll learn about these panes as they become useful throughout this course.

## Opening R and RStudio

Now that you have both R and RStudio on your computer, you can begin using R by opening the RStudio program. Open RStudio just as you would any program, by clicking on its icon in your dock, applications menu, or by typing "RStudio" at the Windows Run prompt.

<div class="figure" style="text-align: center">
<img src="images/layout.png" alt="RStudio Pane Layout" width="85%" />
<p class="caption">RStudio Pane Layout</p>
</div>

You're now ready to use R!

## Bonus Tasks

If you're really feeling confident, go ahead and try installing a few R packages. R packages are like specialized tools that any user can install for free into their copy of R. Packages are the working elements of R operations. Think of R as an all-in-one toolbox you might see at Home-Depot. It will typically include most any tool you might need for most tasks (i.e., hammer, screwdrivers, tape measure, etc.). Often times though you run into a task for which your toolbox doesn't have a tool. That's where R pacakges come in.

Let's give it a shot. Click once in the Source pane Untitled1 document and type the following lines of R code verbatim and hit Enter:


```r
install.packages(c("tidyverse", "devtools"))
devtools::install_github("aaronbaggett/labs2316")
```

Once you hit Enter you'll start to notice lots of red text cascading through the R Console. Not to worry, that's R doing exactly what you told it to do. Congratulations, you just completed your first of many R code functions.

***

<font size="2"> This handout was adapted by Dr. Aaron R. Baggett from [Grolemund, G. (2014). *Hands-on programming with r: write your own functions and simulations.* O'Reilly Media, Inc.](https://rstudio-education.github.io/hopr/) for use in PSYC 2316: Statistics for the Social Sciences. </font> 

