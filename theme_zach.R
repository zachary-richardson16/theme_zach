## Create custom theme
theme_zach <- function(base_size = 11, base_family = "sans") {
  
  ## Update default shape, size, outline color, and outline thickness for geom_point
  update_geom_defaults("point", list(shape = 21, size = 2, colour = "black", stroke = 0.5))
  
  # ## Update default outline color for geom_bar and geom_col
  # update_geom_defaults("bar", list(colour = "black"))
  # update_geom_defaults("col", list(colour = "black"))
  
  ## Create custom theme
  list(
    
    ## The %+replace% operator allows you to modify elements in themes
    theme_minimal(base_size = base_size, base_family = base_family) %+replace%
      theme(
        
        ## Figure:
        # Title
        plot.title = element_text(
          size = rel(1.4), face = "bold", hjust = 0.5
        ),
        
        # Subtitle
        plot.subtitle = element_text(
          size = rel(1.1), margin = margin(b = 10)
        ),
        
        # Caption
        plot.caption = element_text(
          size = rel(0.8), hjust = 1
        ),
        
        ## Axes
        # Title
        axis.title = element_text(
          size = rel(1.0), face = "bold"
        ),
        
        # Tick-text
        axis.text = element_text(
          size = rel(0.9)
        ),
        
        # Axis lines
        axis.line = element_line(color = "black"),
        
        # Tick lines
        axis.ticks = element_line(color = "black"),
        
        ## Panel:
        # Major gridlines
        panel.grid.major = element_line(color = "grey85", linewidth = 0.2),
        
        # Minor gridlines
        panel.grid.minor = element_blank(),
        
        # Figure background
        panel.background = element_rect(fill = "white", color = "black"),
        
        ## Legend:
        # Position
        legend.position = "right",
        
        # Direction
        legend.direction = "vertical",
        
        # Text
        legend.text = element_text(size = rel(1.0)),
        
        # Title
        legend.title = element_text(face = "bold"),
        
        # Remove background
        legend.background = element_blank(),
        
        ## Facet labels:
        # Remove background
        strip.background = element_rect(fill = "white", color = "NA"),
        
        # Text
        strip.text = element_text(
          size = rel(0.9), face = "bold", margin = margin(b = 2))
      )
    
  )
  
}




scale_fill_zach <- function(...) {
  ggplot2::scale_fill_manual(
    values = c(
      "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2",
      "#D55E00", "#CC79A7", "#999999", "#882255", "#44AA99",
      "#117733", "#DDCC77", "#332288", "#AA4499", "#6699CC",
      "#88CCEE", "#44BB99", "#999933", "#CC6677", "#AA4466"
    ),
    ...
  )
}


scale_color_zach <- function(...) {
  ggplot2::scale_color_manual(
    values = c(
      "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2",
      "#D55E00", "#CC79A7", "#999999", "#882255", "#44AA99",
      "#117733", "#DDCC77", "#332288", "#AA4499", "#6699CC",
      "#88CCEE", "#44BB99", "#999933", "#CC6677", "#AA4466"
    ),
    ...
  )
}
