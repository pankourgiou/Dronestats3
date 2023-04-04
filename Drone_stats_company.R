str(drones)
summary(drones)
table(drones$company)
library(ggplot2)

ggplot(drones, aes(x = company)) +
  geom_bar(fill = "cornflowerblue", color = "black") +
  labs(title = "Bar Plot of Drone category",
       x = "Company", y = "Count")
# Create a contingency table of various_applications and group
contingency_table <- table(drones$company, drones$group)

# Perform a chi-squared test
# Create a contingency table of various_applications and group
anova <- aov(weight ~ group, data = drones)
summary(anova)
