library(rjson)
rjson::fromJSON("./data/Terminate.json")
?fromJSON
library(jsonlite)
Terminate <- jsonlite::fromJSON(("./data/Terminate.json"))
A1Q1 <- jsonlite::fromJSON("./data/A1Q1.json")
A1Q3 <- jsonlite::fromJSON("./data/A1Q3.json")
A1Q4 <- jsonlite::fromJSON("./data/A1Q4.json")
A1Q5 <- jsonlite::fromJSON("./data/A1Q5.json")
PW <- jsonlite::fromJSON("./data/PW.json")
# PW %>%
#   summarise(across(.cols = c("Pieces","Weight","Net"),.fns = c(mean,median,sd"))))
  
summ <- PW %>%
  summarise(across(.cols = c("Pieces","Weight","Net"),.fns = c(mean=mean,median=median,sd=sd),.names = "{.col}.{.fn}"))

?across

ggpmisc::geom_table_npc()
