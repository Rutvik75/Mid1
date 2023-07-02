# upload the dataset

data = read.csv("COVID19_state.csv")
install.packages("dplyr")
library(dplyr)

install.packages("explore")
library(explore)
# Exploratory data analysis

explore_tbl(data)
describe(data)
explore_all(data)
explore_tbl(data)
data %>%
  select(State,Tested,Infected,Deaths,Population,Pop.Density,Gini,ICU.Beds,Income,GDP,Health.Spending) %>%
  explore_all(target = Deaths)
attach(data)
plot(Tested,Pop.Density,
     main="Basic Scatter plot of Health.Spending vs. Income ",
     xlab=" Health.Spending",
     ylab="Income")
abline(lm(Income~Health.Spending), col="red", lwd=5, lty=5)
lines(lowess(Health.Spending~Income), col="blue", lwd=5, lty=5)

