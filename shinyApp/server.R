library(shiny)

# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
  
  # Return the requested dataset
  datasetInput <- reactive({
    switch(input$dataset,
           'Unknown' = filter(data,data$Species_ID=='Unknown'),
           'Human' = filter(data,data$Species_ID=='Human'),
           'Cattle' = filter(data,data$Species_ID=='Cattle'),
           'Horse' = filter(data,data$Species_ID=='Horse'),
           'Sheep' = filter(data,data$Species_ID=='Sheep'),
           'Bird' = filter(data,data$Species_ID=='Bird'),
           'Buffalo' = filter(data,data$Species_ID=='Buffalo'),
           'Camel' = filter(data,data$Species_ID=='Camel'),
           'Crocodile' = filter(data,data$Species_ID=='Crocodile'),
           'Kangaroo' = filter(data,data$Species_ID=='Kangaroo'),
           'Possum' = filter(data,data$Species_ID=='Possum'),
           'Vehicle' = filter(data,data$Species_ID=='Vehicle'),
           'Fox' = filter(data,data$Species_ID=='Fox'),
           'Pig' = filter(data,data$Species_ID=='Pig'),
           'Cat' = filter(data,data$Species_ID=='Cat'),
           'Dog' = filter(data,data$Species_ID=='Dog'))
  })
  
  # Show the first "n" observations
  output$view <- renderTable({
    head(datasetInput(), n = input$obs)
  })
})
