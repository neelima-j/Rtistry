library(ggplot2)
library(ggforce)

# Ellsworth Kelly
# The Mallarmé Suite
# 1991
# https://www.moma.org/collection/works/90695

green <- "#71A119"
red <- "#D5341B"
blue <- "#0F4999"
black <- "#2B2828"
background <- "#E5DECD"

line <- data.frame(
  x1 = c(0,10),
  y1 = c(-10,-10),
  xend = c(10,10),
  yend = c(-10,0)
)

p1 <- ggplot() + geom_arc(aes(x0 = 0, y0 = 0, r = 10, start = pi, end = pi/2))

df_poly1 <- rbind(c(0,0),data.frame(x = ggplot_build(p1)$data[[1]]$x,y = ggplot_build(p1)$data[[1]]$y),c(0,0))
ggplot() + 
  geom_polygon(data = df_poly1, aes(x,y), fill = black) +
  geom_segment(data=line,aes(x=x1,y=y1,xend=xend,yend=yend),color = "grey")+
  theme_void() +
  theme(plot.margin=margin(1,1,1,1,"cm")) +
  theme(plot.background = element_rect(fill = background , color = background))+
  coord_fixed(ratio=1.2)



