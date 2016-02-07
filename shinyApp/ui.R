library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Shiny Text"),
  
  # Sidebar with controls to select a dataset and specify the number
  # of observations to view
  sidebarLayout(
    sidebarPanel(
      selectInput("dataset", "Choose a dataset:", 
                  choices = c('Unknown','Human','Cattle','Horse','Sheep','Bird','Buffalo','Camel','Crocodile','Kangaroo', 'Possum', 'Vehicle', 'Fox', 'Pig', 'Cat','Dog')),
      
      numericInput("obs", "Number of observations to view:", 10)
    ),
    
    # Show a summary of the dataset and an HTML table with the requested
    # number of observations
    mainPanel(
      verbatimTextOutput("summary"),
      
      tableOutput("view")
    )
  )
))
