## Create custom theme
theme_zach <- function(base_size = 11, base_family = "sans") {
  
  ## Create custom color palette for ggplot
  custom_palette = c(
    "#1E90FF", "#F28E2B", "#E15759", "#76B7B2", "#59A14F",
    "#EDC949", "#AF7AA1", "#FF9DA7", "#9C755F", "#BAB0AC"
  )
  
  ## Update default shape, size, outline color, and outline thickness for geom_point
  update_geom_defaults("point", list(shape = 21, size = 2, colour = "black", stroke = 0.5))
  
  ## Update default outline color for geom_bar and geom_col
  update_geom_defaults("bar", list(colour = "black"))
  update_geom_defaults("col", list(colour = "black"))
  
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
          size = rel(1.1), face = "bold"
        ),
        
        # Tick-text
        axis.text = element_text(
          size = rel(1.0)
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
      ),
    
    ## Update colors with custom palette
    scale_fill_manual(values = custom_palette),
    
    scale_color_manual(values = custom_palette)
    
  )
  
}