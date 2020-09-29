### ----------------------------------------------------------------------------- ###
### --------------------- PITCHf/x Database Construction ------------------------ ###
### ----------------------------------------------------------------------------- ###

### --- Load package libraries (if necessary) --- ###
library(dplyr)
library(pitchRx)

### --- Set and create *pfx_16a* working directory --- ###
setwd("~/Dropbox/Research Projects/Austin_R_Meetup/data")

### --- Initialize SQLite database --- ###
pfx_16 <- src_sqlite("pfx_16.sqlite3", create = TRUE)

### --- Set XML files to collect --- ###
files <- c("inning/inning_all.xml", "players.xml", "miniscoreboard.xml")

### --- Scrape 2011 PITCHf/x data --- ###
scrape(start = "2016-06-01", end = "2016-06-07", suffix = files, connect = pfx_16$con)

### --- Verify *pfx_16* tables --- ###
pfx_16

### --- Load SQLite table --- ###
pfx_16_all <- src_sqlite("~/Dropbox/Research Projects/Austin_R_Meetup/data/pfx_16.sqlite3")

### --- Convert *pfx_16_all* tables to standalone tables --- ###
# action <- tbl(pfx_16_all, "action")
atbat <- tbl(pfx_16_all, "atbat")
# coach <- tbl(pfx_16_all, "coach")
# game <- tbl(pfx_16_all, "game")
# media <- tbl(pfx_16_all, "media")
pitch <- tbl(pfx_16_all, "pitch")
# player <- tbl(pfx_16_all, "player")
# po <- tbl(pfx_16_all, "po")
# runner <- tbl(pfx_16_all, "runner")
umpire <- tbl(pfx_16_all, "umpire")

### --- Chaining operations for data munging (I hate that word tho!) --- ###
atbats <- atbat %>%
  select(num, stand, b_height, batter_name, gameday_link) %>%
  group_by(gameday_link)
atbats <- collect(atbats, n = Inf)

pitches <- pitch %>%
  select(call = des, sz_top, sz_bot, px, pz, zone, num, count, gameday_link) %>%
  filter(call == "Called Strike" | call == "Ball") %>%
  group_by(gameday_link)
pitches <- collect(pitches, n = Inf)

umpires <- umpire %>%
  select(position, umpire = name, gameday_link) %>%
  filter(position == "home") %>%
  group_by(gameday_link)
umpires <- collect(umpires, n = Inf)

### --- Join *atbat*, *pitch*, and *umpire* by *gameday_link* --- ###
ps_abs <- left_join(pitches, atbats, by = c("num", "gameday_link"))
ps_abs_us <- left_join(ps_abs, umpires, by = "gameday_link", copy = TRUE)

pfx_16 <- tbl_df(as.data.frame(ps_abs_us, n = -1))

### --- Exclude missing pitches --- ###
pfx_16 <- na.omit(pfx_16)

### --- Drop rows 1:8 with no *b_height* --- ###
# pfx_16 <- pfx_16[-1:-8, ]

### --- Write out *pfx_16* to CSV --- ###
# write.csv(pfx_16, "~/Desktop/pfx_16.csv")

### --- Read in *pfx_16* --- ###
# pfx_16 <- fread("~/Desktop/pfx_16.csv")

### --- Add player sz limits by *b_height* --- ###
pfx_16 <- pfx_16 %>%
  group_by(b_height) %>%
  mutate(player_sz_bot = mean(sz_bot)) %>%
  mutate(player_sz_top = mean(sz_top))

### --- Create *u_test* variable for umpire's decision [1 = correct] --- ###
# Ball radius = ((1.57*2 + 17) / 12) / 2
pfx_16$u_test <- with(pfx_16,
    ifelse(call == "Ball" & px < -0.8110375 | px > 0.8110375 | 
      pz < player_sz_bot | pz > player_sz_top, 1,
    ifelse(call == "Called Strike" & pz > player_sz_bot & pz < player_sz_top & 
      px >= -0.8110375 & px <= 0.8110375, 1,
    ifelse(call == "Ball" & pz > player_sz_bot & pz < player_sz_top & 
      px > -0.8110375 & px < 0.8110375, 0,
    ifelse(call == "Called Strike" & px < -0.8110375 | px > 0.8110375 | 
      pz < player_sz_bot | pz > player_sz_top, 0, 99)))))

### --- Create *u_test* variable for umpire's decision [1 = correct] --- ###
# Ball radius = ((1.57*2 + 17) / 12) / 2
pfx_16$u_test_17 <- with(pfx_16,
    ifelse(call == "Ball" & px < -0.7083333 | px > 0.7083333 | 
      pz < sz_bot | pz > sz_top, 1,
    ifelse(call == "Called Strike" & pz > sz_bot & pz < sz_top & 
      px >= -0.7083333 & px <= 0.7083333, 1,
    ifelse(call == "Ball" & pz > sz_bot & pz < sz_top & 
      px > -0.7083333 & px < 0.7083333, 0,
    ifelse(call == "Called Strike" & px < -0.7083333 | px > 0.7083333 | 
      pz < sz_bot | pz > sz_top, 0, 99)))))

### --- Rearrange variables --- ###
#pfx_16 <- pfx_16 %>%
#  select(c(count, sz_top, sz_bot, player_sz_top, player_sz_bot, 
#    px, pz, zone, b_height, stand, call, umpire, u_test))

with(pfx_16, mean(as.numeric(u_test)))
table(pfx_16$u_test)

with(pfx_16, mean(as.numeric(u_test_17)))
table(pfx_16$u_test_17)

umpires <- data.frame(umpire = sort(unique(pfx_16$umpire)))
write.csv(umpires, "~/Desktop/umpires.csv")

#pfx_16 <- pfx_16 %>%
#  group_by(umpire) %>%
#  filter(length(u_test) >= 1000)

### --- Specify *count* advantages --- #
# 1. Add *bs_count* variable to indicate who has the advantage (p vs. b)
# Based on Marchi & Albert, 2014
pfx_16$bs_count <- with(pfx_16,

  # 1.1 Neutral
  ifelse(count == "0-0" | count == "1-0" | 
         count == "1-1" | count == "2-1", "neutral",

  # 1.2 Batter
  ifelse(count == "2-0" | count == "3-0" | 
		 count == "3-1" | count == "3-2", "batter",

  # 1.3 Pitcher
  ifelse(count == "0-1" | count == "0-2" | 
         count == "1-2" | count == "2-2", "pitcher", 99)
)))

# 2. Convert *count* to factor
pfx_16$bs_count <- as.factor(pfx_16$bs_count)

### --- Respecify *zone* regions --- #
pfx_16$zone_reg <- with(pfx_16,

  # 1. RHBs
  ifelse(stand == "R" & zone == "1" | 
		 stand == "R" & zone == "4" | 
         stand == "R" & zone == "7", "inner",

  ifelse(stand == "R" & zone == "2" | 
         stand == "R" & zone == "5" | 
         stand == "R" & zone == "8", "middle",

  ifelse(stand == "R" & zone == "3" | 
         stand == "R" & zone == "6" | 
         stand == "R" & zone == "9", "outer",

  # 2. LHBs
  ifelse(stand == "L" & zone == "1" | 
         stand == "L" & zone == "4" | 
         stand == "L" & zone == "7", "outer",

  ifelse(stand == "L" & zone == "2" | 
         stand == "L" & zone == "5" | 
         stand == "L" & zone == "8", "middle",

  ifelse(stand == "L" & zone == "3" | 
         stand == "L" & zone == "6" | 
         stand == "L" & zone == "9", "inner", "ball")))))))

# 3. Convert *zone* to factor
pfx_16$zone_reg <- as.factor(pfx_16$zone_reg)

### --- Relevel "zone_reg" to make "ball" reference group --- ###
pfx_16$zone_reg <- relevel(pfx_16$zone_reg, ref = "ball")

### --- Relevel "bs_count" to make "neutral" reference group --- ###
pfx_16 $bs_count <- relevel(pfx_16$bs_count, ref = "neutral")

### --- Rearrange variables --- ###
#pfx_16 <- pfx_16 %>%
#  select(c(count, bs_count, sz_top, sz_bot, player_sz_top, player_sz_bot, 
#    px, pz, zone, zone_reg, b_height, stand, call, umpire, u_test))

### Read in 2013 umpire-level ###
u.df <- read.csv("~/Desktop/umpires.csv")
u.df <- read.csv("umpire_level_data.csv", header = TRUE)
u.df$umpire <- as.character(u.df$umpire)

### --- Select all umpires except the following: --- ###
# 1. Jordan Baker
# 2. Toby Basner
# 3. Mark Lollo
# 4. Stephen Barga
# 5. Adam Hamari
# 6. Will Little
# 7. Quinn Wolcott
# 8. Hal Gibson III
# 9. John Tumpane

pfx_16 <- pfx_16[ ! pfx_16$umpire %in% 
  c("Jordan Baker", "Toby Basner", "Mark Lollo", "Stephen Barga", ]

pfx_16 <- inner_join(pfx_16, u.df, by = "umpire")

save(pfx_16, file = "~/Desktop/pfx_16.rda")
