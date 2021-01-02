library(dplyr)

count.data <- data.frame(
  class = c("Pear", "Orange", "Grapefruit", "bananas"),
  n = c(325, 285, 706, 885),
  prop = c(14.8, 12.9, 32.1, 40.2)
)
count.data

count.data <- count.data %>%
  arrange(desc(class)) %>%
  mutate(lab.ypos = cumsum(prop) - 0.5*prop)
count.data

mycols <- c("#0073C2FF", "#EFC000FF", "#868686FF", "#CD534CFF")

ggplot(count.data, aes(x = 2, y = prop, fill = class)) +
  geom_bar(stat = "identity", color = "white") +
  coord_polar(theta="y", start = 0) +
  geom_text(aes(y = lab.ypos, label = prop), color = "white") +
  scale_fill_manual(values = mycols) +
  theme_void() +
  xlim(0.5, 2.5)
