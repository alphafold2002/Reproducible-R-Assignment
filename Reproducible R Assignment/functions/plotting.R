
#plot the results of the ANCOVA statistical test 
plot_ancova <- function(model){
  model %>% 
    ggplot(aes(x = body_mass_g, y = culmen_length_mm, colour=species)) +
    geom_point(aes(color = species, 
                   shape = species),
               size = 2.5,
               alpha = 0.5, 
               show.legend=FALSE) +
    geom_smooth(method = "lm", aes(color=species))+
    scale_colour_manual(values = c("darkorange","purple","cyan4")) +
    labs(title = "The effects of body size and species on bill length (ANCOVA)",
         x = "Body mass (g)",
         y = "Bill length (mm)",
         color = "Penguin species",
         shape = "Penguin species") +
    theme_bw()+
    theme(legend.position = 'bottom', legend.direction = "horizontal")
  }
    


    
   
save_figure_svg <- function(ancova, filename, size, scaling){
  size_inches = size/2.54
  svglite(filename, width = size_inches, height = size_inches, scaling = scaling)
  ancova_figure <- plot_ancova(ancova)
  print(ancova_figure)
  dev.off()
}