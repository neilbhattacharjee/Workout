# scatterplot
library(ggplot2)
klay_scatterplot <- ggplot(data = thompson) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))


iggy_scatterplot <- ggplot(data = iguodala) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))

green_scatterplot <- ggplot(data = green) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))

curry_scatterplot <- ggplot(data = curry) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))

durant_scatterplot <- ggplot(data = durant) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))


# court image (to be used as background of plot)
library(jpeg)
library(grid)
court_file <- "../images/nba-court.jpg"
# create raste object
court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))

klay_shot_chart <- ggplot(data = thompson) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()


curry_shot_chart <- ggplot(data = curry) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Curry (2016 season)') +
  theme_minimal()


iggy_shot_chart <- ggplot(data = iguodala) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Iggy (2016 season)') +
  theme_minimal()


draymond_shot_chart <- ggplot(data = green) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond (2016 season)') +
  theme_minimal()


durant_shot_chart <- ggplot(data = durant) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Durant (2016 season)') +
  theme_minimal()




pdf(file = "../images/kevin-durant-shot-chart.pdf",width=6.5,height=5) 

ggplot(data = durant) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Durant (2016 season)') +
  theme_minimal()
dev.off()

pdf(file = "../images/stephen-curry-shot-chart.pdf",width=6.5,height=5) 

ggplot(data = curry) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Curry (2016 season)') +
  theme_minimal()

dev.off()


pdf(file = "../images/andre-iguodala-shot-chart.pdf",width=6.5,height=5) 

ggplot(data = iguodala) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Iggy (2016 season)') +
  theme_minimal()

dev.off()


pdf(file = "../images/klay-thompson-shot-chart.pdf",width=6.5,height=5) 

ggplot(data = thompson) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()

dev.off()

pdf(file = "../images/draymond-green-shot-chart.pdf",width=6.5,height=5) 


ggplot(data = green) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond (2016 season)') +
  theme_minimal()

dev.off()


ggplot(data= tables) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: GSW (2016 season)') +
  theme_minimal() +
  facet_wrap(~name)

pdf(file = "../images/gsw-shot-charts.pdf", width = 8, height = 7)
ggplot(data= tables) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: GSW (2016 season)') +
  theme_minimal() +
  facet_wrap(~name)
dev.off()

gsw_shot_charts <- ggplot(data= tables) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: GSW (2016 season)') +
  theme_minimal() +
  facet_wrap(~name)

ggsave("../images/gsw-shot-charts.png", plot = gsw_shot_charts, width = 8, height = 7, units = "in")

tables <- read.csv("../data/shots-data.csv", header = TRUE)
