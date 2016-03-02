# Loading the libraries
library(shiny)
library(plotly)
library(dplyr)

shinyUI(fluidPage( 
  
  tabPanel('Bar Chart',
  # Creating a title
    titlePanel("Width Measurement"),
    
    sidebarLayout(position = "right",
                  
    # Side panel for controls
        sidebarPanel(
          radioButtons("flower", 
              label = h4("Select a flower part."),
              choices = list("Sepal Width" = 'Sepal.Width', 
                             "Petal Width" = 'Petal.Width')),
          
          br(),
          
          selectInput("select",
              label = list(h4("Select a type of visualization."), h5("The bar graph will show the max width value instead of displaying all the values.")), 
              choices = list("Box" = 'box', 
                              "Bar" = 'bar'))),
      
    mainPanel(plotlyOutput('chart'))
))))