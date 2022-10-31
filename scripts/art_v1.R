library(ggplot2)
library(RColorBrewer)
library(qs)

#Making a dataframe with 3 variables: 2 numeric, 1 alphanumeric
data <- data.frame(replicate(2,sample(0:1000,900,rep=FALSE)))
data$X3 <- randomStrings(900, 1)

#Plotting the data
ggplot(data, aes(x=X1, y=X2,fill=X3)) + 
  geom_area(alpha=.7,size=1 )+
  #geom_col(alpha=.5,size=20)+
  theme_void()+
  scale_fill_manual(values = c(1:62))+
  scale_color_brewer(palette = "Greys")+
  theme(legend.position="none")+
  labs(caption = "art in R & ggplot2 by Neelima-J")+
  theme(plot.caption = element_text(vjust = 13,hjust = 0.9)) 
