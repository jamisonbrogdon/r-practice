library(ggplot2)

p <- ggplot(ToothGrowth, aes(x="",y=len)) +
  geom_boxplot(fill="slateblue", notch = TRUE)
p

#Rotate the box plot
p + coord_flip() + theme_classic()
