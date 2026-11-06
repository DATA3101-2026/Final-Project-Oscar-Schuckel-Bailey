library(car)
library(quest)
library(psych)


#R script to pull variables of interest, and create raw data files that are not too big
# CCHS 2002


# file.choose() was the first working way that I managed to import the csv files. Regular Import dataset did not work

# ----CCHS 2002----
CCHS_2002_raw <- read.csv(file.choose(), header = TRUE, stringsAsFactors = FALSE)

CCHS_2002_selected <- subset(CCHS_2002_raw, select = c(SCRB_082,GENB_10,PACBDFM,SPVB_1,DHHBGAGE,DHHB_SEX,INCBGHH,EDUBDR04,DHHBGMS))

# ----CCHS 2012----
CCHS_2012_raw <- read.csv(file.choose(), header = TRUE, stringsAsFactors = FALSE)

CCHS_2012_selected <- subset(CCHS_2012_raw, select = c(SCR_082,GEN_10,PHSFPPA,SPT_01,DHHGAGE,DHH_SEX,INCGHH,EDUDR04,DHHGMS))

# ----MHACS 2022----
MHACS_2022_raw <- read.csv(file.choose(), header = TRUE, stringsAsFactors = FALSE)

MHACS_2022_selected <- subset(MHACS_2022_raw, select = c(GEN_08B,GEN_10,PHSFPPA,SPI_01,DHHGAGE,GENDER,INCDVHH,EDU_05,DHHGMS))



#Export these datasets to the local version of the github repo
write.csv(CCHS_2002_selected, "C:/Projects/Mental-Health_Analysis_2026/Final-Project-Oscar-Schuckel-Bailey/data/raw/CCHS_2002_filtered.csv", row.names = FALSE)

write.csv(CCHS_2012_selected, "C:/Projects/Mental-Health_Analysis_2026/Final-Project-Oscar-Schuckel-Bailey/data/raw/CCHS_2012_filtered.csv", row.names = FALSE)

write.csv(MHACS_2022_selected, "C:/Projects/Mental-Health_Analysis_2026/Final-Project-Oscar-Schuckel-Bailey/data/raw/MHACS_2022_filtered.csv", row.names = FALSE)


