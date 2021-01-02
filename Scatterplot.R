library(ggplot2)

ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point() + 
  theme_light()

ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point(size=2, shape=15, alpha = 1/10) +
  theme_light()
