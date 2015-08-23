library(shiny)
eBMI <- function(hfeet, hinches, wpounds) 703 * wpounds/(hfeet*12 + hinches)^2 
shinyServer(
  function(input, output) {
    output$textBMI <- renderText({
      input$goButton
      isolate(eBMI(input$feet, input$inches, input$pounds))
    })
  }
)