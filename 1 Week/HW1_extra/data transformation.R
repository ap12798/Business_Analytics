library(rattle)
rattle()
df <- read.csv("SERU.csv", na.strings = "")


df$INVITED_PREVIOUS[is.na(df$INVITED_PREVIOUS)] <- 0
df$NONRESIDENT <- as.factor(df$NONRESIDENT)
df$NONRESIDENT <- as.numeric(df$NONRESIDENT)
#if you want to transfer 1 and 0's to Y and N

df$RESPONDED_SURVEY <- ifelse(df$RESPONDED_SURVEY=="1", "Y", "N")

list(df$RESPONDED_SURVEY == "1")

summary(df$RESPONDED_SURVEY)
str(df$RESPONDED_SURVEY)


write.csv(df, file = "SERU_cleaned.csv")



library(rattle)
rattle()
df <- read.csv("churn_imbalanced.csv", na.strings = "")
df <- subset(df, df$result == "LEAVE")
df$REPORTED_SATISFACTION <- as.character(df$REPORTED_SATISFACTION)
df$REPORTED_SATISFACTION[df$REPORTED_SATISFACTION == "very_unsat"] <- "0"
df$REPORTED_SATISFACTION[df$REPORTED_SATISFACTION == "unsat"] <- "1"
df$REPORTED_SATISFACTION[df$REPORTED_SATISFACTION == "avg"] <- "2"
df$REPORTED_SATISFACTION[df$REPORTED_SATISFACTION == "sat"] <- "3"
df$REPORTED_SATISFACTION[df$REPORTED_SATISFACTION == "very_sat"] <- "4"
df$REPORTED_SATISFACTION <- as.factor(df$REPORTED_SATISFACTION)

df$REPORTED_USAGE_LEVEL <- as.character(df$REPORTED_USAGE_LEVEL)

df$REPORTED_USAGE_LEVEL[df$REPORTED_USAGE_LEVEL == "very_little"] <- "0"
df$REPORTED_USAGE_LEVEL[df$REPORTED_USAGE_LEVEL == "little"] <- "1"
df$REPORTED_USAGE_LEVEL[df$REPORTED_USAGE_LEVEL == "avg"] <- "2"
df$REPORTED_USAGE_LEVEL[df$REPORTED_USAGE_LEVEL == "high"] <- "3"
df$REPORTED_USAGE_LEVEL[df$REPORTED_USAGE_LEVEL == "very_high"] <- "4"
df$REPORTED_USAGE_LEVEL <- as.factor(df$REPORTED_USAGE_LEVEL)

df$CONSIDERING_CHANGE_OF_PLAN <- as.character(df$CONSIDERING_CHANGE_OF_PLAN)
df$CONSIDERING_CHANGE_OF_PLAN[df$CONSIDERING_CHANGE_OF_PLAN == "no"] <- "4"
df$CONSIDERING_CHANGE_OF_PLAN[df$CONSIDERING_CHANGE_OF_PLAN == "never_thought"] <- "3"
df$CONSIDERING_CHANGE_OF_PLAN[df$CONSIDERING_CHANGE_OF_PLAN == "considering"] <- "2"
df$CONSIDERING_CHANGE_OF_PLAN[df$CONSIDERING_CHANGE_OF_PLAN == "perhaps"] <- "1"
df$CONSIDERING_CHANGE_OF_PLAN[df$CONSIDERING_CHANGE_OF_PLAN == "actively_looking_into_it"] <- "0"
df$CONSIDERING_CHANGE_OF_PLAN <- as.factor(df$CONSIDERING_CHANGE_OF_PLAN)

df$COLLEGE <- as.character(df$COLLEGE)
df$COLLEGE[df$COLLEGE == "zero"] <- "0"
df$COLLEGE[df$COLLEGE == "one"] <- "1"
df$COLLEGE <- as.factor(df$COLLEGE)


write.csv(df, file = "churn_imbalanced_cleaned.csv")
