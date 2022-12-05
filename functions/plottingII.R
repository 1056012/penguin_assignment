
#Code for plotting 

scatter_plot<- ggplot(data=penguins_mass_length,
                      aes(x=culmen_length_mm,
                          y=body_mass_g,
                          colour= species
                      )) +
  geom_point()+
  scale_colour_discrete(labels=c('Adelie Penguin', 'Chinstrap Penguin', 'Gentoo Penguin'))+
  labs(title = "Culmen Length vs. Body Mass",
       x= "Culmen Length (mm)", 
       y= "Body Mass (g)",
       colour = "Species")+
  theme_bw()+
  geom_smooth(method=lm, se= FALSE)
  
