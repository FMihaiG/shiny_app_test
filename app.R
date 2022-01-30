library(shiny)

rm(list=ls())

# PRODUCTION

ui = fluidPage(
  sidebarLayout(
    sidebarPanel(
      selectInput(
        "input_name",
        "Select name",
        choices = c("Beavus","Butthead")
      )
    ),
    mainPanel(
      textOutput(
        "output_name"
      )
    )
  )
)

server = function(input,output,session){
  output$output_name = renderText(paste0("Hello ",input$input_name,"!"))
}

shinyApp(ui = ui, server = server)












