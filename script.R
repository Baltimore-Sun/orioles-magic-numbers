library(tidyverse)
library(jsonlite)
library(rjson)

myData <- fromJSON(file="https://sheets.googleapis.com/v4/spreadsheets/1jaY6NTeuGwEiMToDNYGJ4_0o2ORoXSyGhUEtEqs7Ylk/values/Sheet1?alt=json&key=AIzaSyAFpxycBCDJGBvPWZ_U9-ldTrQJNeoDoBI")

exportJSON <- toJSON(myData)

write(exportJSON, "output.json")
