###
### Pat and Aaron's $10K Tesla Experiment
###

# Load package libraries
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(ggplot2))
suppressPackageStartupMessages(library(knitr))
suppressPackageStartupMessages(library(BatchGetSymbols))

# Return daily TLSA data
invisible(capture.output(daily_returns <- BatchGetSymbols(tickers = "TSLA",
  first.date = as.Date("2017-07-25"),
  last.date = Sys.Date())))

# Convert to data frame
investment <- data.frame(daily_returns$df.tickers)

### UNUSED
# Takes the difference of each successive element
x <- tsla_summ$Close
x[-1] - x[-length(x)]
### UNUSED

# Create performance table
tsla_summ <- investment %>% 
  select(
    Ticker = ticker, 
    Date = ref.date,
    Open = price.open,
    High = price.high,
    Low = price.low,
    #Volume = volume,
    Close = price.close) %>% 
  #mutate(Value = Close - Open) %>% 
  mutate(Pct_Change = round(((Close-Open)/Open)*100, 2)) %>% 
  mutate(Dollar_Change = 10000*(Pct_Change/100)) %>% 
  mutate(Profit_Total = cumsum(10000*(Pct_Change/100)))

# Calculate daily profit/loss
daily <- round(tsla_summ$Profit_Total[length(tsla_summ$Profit_Total)], 2) - 7
updown <- ifelse(daily < 0, "down", "up")

# Track investment performance
ggplot(daily_returns$df.tickers, aes(x = ref.date, y = price.close, color = "1")) + 
  geom_line(size = 0.75) + scale_color_manual(values = "tomato") +
  facet_wrap(~ticker, scales = 'free_y') + theme_light() +
  theme(strip.text.x = element_text(size = 17, face = "bold"),
    legend.position = "none", axis.text.x = element_text(size = 11),
    axis.text.y = element_text(size = 11),
    axis.title.y = element_text(size = 12, face = "bold")) +
  scale_x_date(name = "") +
  scale_y_continuous(name = "Closing Price\n")

# Update table names and print pretty
names(tsla_summ) <- c("Ticker", "Date", "Open", "High", "Low", "Close", 
  "Daily % Change", "Daily $ Change", "Cumulative Profit Total")
kable(tsla_summ)
