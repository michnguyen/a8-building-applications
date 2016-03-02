# Read in data
library(plotly)
library(shiny)
library(dplyr)

shinyServer(function(input, output) {
  
  # Creating a chart via build bubble chart function
  output$chart <- renderPlotly({
    
    plot_ly(iris, 
            x = Sepal.Width, 
            y = Petal.Width,
            mode = "markers",
            color = Species,
            size = (data$Sepal.Width - data$Petal.Width),
            opacity = Sepal.Width
    ) %>%
    layout(xaxis = list(title = "Sepal Width"), 
           yaxis = list(title = "Petal Width"),
           title = "The Petal Width VS. Sepal Width of Flower"
    ) %>%
    
      return()
  })
})