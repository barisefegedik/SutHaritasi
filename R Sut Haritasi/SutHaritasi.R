library(tidyverse)
library(worldfootballR)
library(ggplot2)
library(ggsoccer)
library(ggimage)
shots <- understat_player_shots(player_url = "Seçtiğin Oyuncunun url uzantısı")
shots <- filter(shots, season=="2024")

shots$X <- shots$X*100
shots$Y <- shots$Y*100
shots$Y <- 100-shot$Y

ggplot(shots) +
  aes(x = X, y = Y) +
  annotate_pitch(fill = "gray15") +
  geom_point(aes(colour = result, size = xG)) +
  coord_flip(xlim = c(50,100),
             ylim = c(0,100)) +
  theme_pitch()+
  labs(title = "Oyuncu İsmi",
       subtitle = "Şut Konumları 2024/2025: Lig ",
       caption = "Veri: Understat | Baris Efe Gedik",
       size = "xG") +
  scale_colour_manual(values = c("#FCAB10", "#44AF69", "#F8333C", "#2B9EB3", "blue"), 
                      name = "Şut Sonucu",
                      labels = c("Bloklandı", "Gol", "Aut", "Kurtarıldı", "Direkten Döndü"))+
  geom_point(data = shots %>% 
               filter(result=="Gol"),
             aes(x = X, y = Y,
                 size = xG),
             shape = 21,
             fill = "#44AF69",
             stroke = 0.6,
             colour = "white") +
  theme(plot.title = element_text(vjust = -0.1, colour = "white", size = 16),
        plot.subtitle = element_text(colour = "white", size = 10),
        plot.caption = element_text(colour = "white"),
        panel.background = element_rect(fill = "gray15"),
        plot.background = element_rect(fill = "gray15"),
        legend.background = element_rect(fill = "gray15"),
        legend.title = element_text(colour = "white", face = "bold"),
        legend.text = element_text(colour = "white", face = "bold")) +
  geom_image(
    data = tibble(X = 91, Y = 89.5),
    aes(image = "C:/Fotograf.png"),
    size = 0.3)

