# Loading the libraries
library(shiny)
library(plotly)
library(dplyr)

shinyUI(fluidPage(          
  # Creating a title
  titlePanel("Iris Species"),
  
    # Side panel for controls
    sidebarPanel(
      sliderInput("slider", 
       label = h3("Slider Range"), 
       min = min(iris$Sepal.Width), 
       max = max(iris$Sepal.Width),
       value = c(min(iris$Sepal.Width), max(iris$Sepal.Width)))),
       
    # Main panel: Display plotly map
    mainPanel(plotlyOutput('chart'), 
              textOutput("text1"))
  ))