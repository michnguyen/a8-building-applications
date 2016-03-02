# Read in data
library(plotly)
library(shiny)
library(dplyr)

shinyServer(function(input, output) {
  
  # Creating a chart via build bubble chart function
  output$chart <- renderPlotly({
    
    plot_ly(iris, 
            x = Species, 
            y = eval(parse(text = input$flower)),
            color = "pink",
            type = input$select,
            opacity = 0.6
    ) %>%
    layout(xaxis = list(title = "Species"), 
           yaxis = list(title = "Width"),
           title = "The Petal VS. Sepal Width of Three Species of Flower"
    ) %>%
    
    return()
  })
})