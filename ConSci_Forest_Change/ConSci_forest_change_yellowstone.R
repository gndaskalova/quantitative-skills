# ConSci Forest change analysis
# Gergana Daskalova 
# 17th Nov 2018

# Libraries ----
library(dplyr)
library(readr)
library(tidyr)
library(ggplot2)

# Load data ----
yellowstone <- Yellowstone_forest_change
manu <- Manu_forest_change
sankuru <- Sankuru_forest_change_1_
nghean <- Nghe_forest_change_1_

# Data formatting ----

# Convert from wide format to long format
yellowstone.loss <- yellowstone %>%
  gather(year, loss, 45:59) %>%
  mutate(year = parse_number(year))

yellowstone.gain <- yellowstone %>%
  gather(year, gain, 30:44) %>%
  mutate(year = parse_number(year)) %>%
  dplyr::select(gain) 

yellowstone.change <- cbind(yellowstone.loss, yellowstone.gain)
yellowstone.change <- gather(yellowstone.change, type, amount, 50:51)

# Plot forest change trends through time ----

# Set ggplot theme
theme_LPI <- function(){
  theme_bw() +
    theme(axis.text = element_text(size = 14), 
          axis.title = element_text(size = 16),
          axis.line.x = element_line(color="black"), 
          axis.line.y = element_line(color="black"),
          panel.border = element_blank(),
          panel.grid.major.x = element_blank(),                                          
          panel.grid.minor.x = element_blank(),
          panel.grid.minor.y = element_blank(),
          panel.grid.major.y = element_blank(),  
          plot.margin = unit(c(1, 1, 1, 1), units = , "cm"),
          plot.title = element_text(size = 18, vjust = 1, hjust = 0),
          legend.text = element_text(size = 12),          
          legend.title = element_blank(),                              
          legend.position = c(0.9, 0.9), 
          legend.key = element_blank(),
          legend.background = element_rect(color = "black", 
                                           fill = "transparent", 
                                           size = 2, linetype = "blank"))
}


(forest_plot_y <- ggplot(yellowstone.change, aes(x = year, y = amount, 
                                               fill = type)) +
   geom_line(aes(colour = type)) +
   geom_point(size = 3, shape = 21) +
   theme_LPI() +
   scale_fill_manual(values = c("#ff9900", "#9900ff")) +
   scale_colour_manual(values = c("#ff9900", "#9900ff")) +
   labs(x = NULL, y = bquote(atop('Forest cover change ('*km ^2*')'), ' '),
        title = "Yellowstone\n") +
    scale_y_continuous(limits = c(0, 16000)) +
   scale_x_continuous(limits = c(2001, 2017),
                      breaks = c(2001, 2005, 2009, 2013, 2017)))

ggsave(forest_plot_y, filename = "yellowstone_forests.png",
       height = 5, width = 9)


# Convert from wide format to long format
manu.loss <- manu %>%
  gather(year, loss, 45:59) %>%
  mutate(year = parse_number(year))

manu.gain <- manu %>%
  gather(year, gain, 30:44) %>%
  mutate(year = parse_number(year)) %>%
  dplyr::select(gain) 

manu.change <- cbind(manu.loss, manu.gain)
manu.change <- gather(manu.change, type, amount, 50:51)

(forest_plot_m <- ggplot(manu.change, aes(x = year, y = amount, 
                                                 fill = type)) +
    geom_line(aes(colour = type)) +
    geom_point(size = 3, shape = 21) +
    theme_LPI() +
    scale_fill_manual(values = c("#ff9900", "#9900ff")) +
    scale_colour_manual(values = c("#ff9900", "#9900ff")) +
    labs(x = NULL, y = bquote(atop('Forest cover change ('*km ^2*')'), ' '),
         title = "Manu\n") +
    scale_y_continuous(limits = c(0, 16000)) +
    scale_x_continuous(limits = c(2001, 2017),
                       breaks = c(2001, 2005, 2009, 2013, 2017)))

ggsave(forest_plot_m, filename = "manu_forests.png",
       height = 5, width = 9)


# Convert from wide format to long format
sankuru.loss <- sankuru %>%
  gather(year, loss, 45:59) %>%
  mutate(year = parse_number(year))

sankuru.gain <- sankuru %>%
  gather(year, gain, 30:44) %>%
  mutate(year = parse_number(year)) %>%
  dplyr::select(gain) 

sankuru.change <- cbind(sankuru.loss, sankuru.gain)
sankuru.change <- gather(sankuru.change, type, amount, 50:51)

(forest_plot_s <- ggplot(sankuru.change, aes(x = year, y = amount, 
                                          fill = type)) +
    geom_line(aes(colour = type)) +
    geom_point(size = 3, shape = 21) +
    theme_LPI() +
    scale_fill_manual(values = c("#ff9900", "#9900ff")) +
    scale_colour_manual(values = c("#ff9900", "#9900ff")) +
    scale_y_continuous(limits = c(0, 16000)) +
    labs(x = NULL, y = bquote(atop('Forest cover change ('*km ^2*')'), ' '),
         title = "Sankuru\n") +
    scale_x_continuous(limits = c(2001, 2017),
                       breaks = c(2001, 2005, 2009, 2013, 2017)))

ggsave(forest_plot_s, filename = "sankuru_forests.png",
       height = 5, width = 9)


# Convert from wide format to long format
nghean.loss <- nghean %>%
  gather(year, loss, 45:59) %>%
  mutate(year = parse_number(year))

nghean.gain <- nghean %>%
  gather(year, gain, 30:44) %>%
  mutate(year = parse_number(year)) %>%
  dplyr::select(gain) 

nghean.change <- cbind(nghean.loss, nghean.gain)
nghean.change <- gather(nghean.change, type, amount, 50:51)

(forest_plot_n <- ggplot(nghean.change, aes(x = year, y = amount, 
                                             fill = type)) +
    geom_line(aes(colour = type)) +
    geom_point(size = 3, shape = 21) +
    theme_LPI() +
    scale_fill_manual(values = c("#ff9900", "#9900ff")) +
    scale_colour_manual(values = c("#ff9900", "#9900ff")) +
    labs(x = NULL, y = bquote(atop('Forest cover change ('*km ^2*')'), ' '),
         title = "Nghe An\n") +
    scale_y_continuous(limits = c(0, 16000)) +
    scale_x_continuous(limits = c(2001, 2017),
                       breaks = c(2001, 2005, 2009, 2013, 2017)))

ggsave(forest_plot_n, filename = "nghean_forests.png",
       height = 5, width = 9)

library(gridExtra)
forest.panel <- grid.arrange(forest_plot_m, forest_plot_n,
                             forest_plot_s, forest_plot_y, ncol = 2)
