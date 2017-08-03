#!/bin/sh
# Diamonds plot loop bash script

cd "/Users/AB/aaronbaggett.github.io/plotloop" && 
Rscript "/Users/AB/aaronbaggett.github.io/plotloop/print_plots.R" &&
git add . &&
git commit -m "Add plot loops" &&
git push