# importing the tidyverse module
library(tidyverse)

# checking the working directory
getwd
# setting the working directory to Documents directory
setwd("C:/Users/Bhandal/Documents")

# loading the dataset with read_csv from the Downloads directory
dataset <- read_csv("C:/Users/Bhandal/Downloads/Dataset.csv")

# assigning the variable to the ggplot
#that will have Species for its x-axis
#and Latitude for its y-axis
Species_v_Latitude <- ggplot(data = dataset, mapping = aes(x = Species, y = Latitude))+
  # underlayed graph will be a jitter plot and
  #dots will be semi translucent green (for trees)
  geom_jitter(alpha = 0.2, color = "green")+
  # overlayed graph will be box plot (transparent)
  geom_boxplot(alpha = 0)+
  # setting formatting for title
  theme(plot.title = element_text(size = rel(1), face = "bold", hjust = 0.5))+
  # naming the title
  ggtitle("Species vs. Latitude")

# assigning the variable to the ggplot
#that will have Species for its x-axis
#and Longitude for its y-axis
Species_v_Longitude <- ggplot(data = dataset, mapping = aes(x = Species, y = Longitude))+
  # underlayed graph will be a jitter plot and
  #dots will be semi translucent green (for trees)
  geom_jitter(alpha = 0.2, color = "green")+
  # overlayed graph will be box plot (transparent)
  geom_boxplot(alpha = 0)+
  # setting formatting for title
  theme(plot.title = element_text(size = rel(1), face = "bold", hjust = 0.5))+
  # naming the title
  ggtitle("Species vs. Longitude")

# saving both plots in the working directory (Documents)
ggsave(Species_v_Latitude, file="Species_v_Latitude.png", width=6, height=4)
ggsave(Species_v_Longitude, file="Species_v_Longitude.png", width=6, height=4)
