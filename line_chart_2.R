USPersonalExpenditure
us <- as.data.frame(USPersonalExpenditure)

us2 <- as.data.frame(t(us))
us2$year <- rownames(us2)

us2$'Medical and Health'

ggplot(data=us2, aes(x=year, y='Food and Tobacco', group=1)) +
  geom_line(color="gold") +
  geom_point(color="navy") +
  theme_light()
