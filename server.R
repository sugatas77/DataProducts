library(shiny)
library(UsingR)
data(diamond)

fit= lm(price ~ carat, data = diamond)
slope<-coef(fit)[2]
names(slope)<- "US Dollars:"

CaratPrice <- function(carat) {0.77134*(carat*slope + coef(fit)[1])}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$carat})
    output$prediction <- renderPrint({CaratPrice(input$carat)})
  }
)