setwd("~/r-practice")

stocks <-read.table('', header=TRUE, sep=",")

stocks$A = as.numeric(gsub("\\$", "", stocks$A))
stocks$B = as.numeric(gsub("\\$", "", stocks$B))

plot(stocks$Sept_2016,stocks$A, type="o",
     xlab = "Sept 2016",
     ylab = "A Closing Prices")