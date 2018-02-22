# How do we perceive our quantitative skills?
# University of Edinburgh symposium 22nd Feb
# The Coding Club Team

library(ggplot2)

# Before the workshop
ggplot(results, aes(Score)) +
  geom_density(alpha = 0.5, colour = "cyan4", fill = "cyan3") +
  scale_x_continuous(limits = c(0, 10)) +
  theme_classic()

# Before and after the workshop

ggplot(results, aes(score, fill = Time, colour = Time)) +
  geom_density(alpha = 0.5) +
  scale_x_continuous(limits = c(0, 10)) +
  theme_classic()