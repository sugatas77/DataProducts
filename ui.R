library(shiny)

shinyUI(
  pageWithSidebar(
    # Diamond cost predictor based on  caret
    headerPanel("Diamonds cost per Carat prediction in USA"),
    
    sidebarPanel(
      numericInput('carat', 'Enter the weight in carats (max 3.0):', 0.1 , min = .01, max = 3.0, step = 0.01),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of the prediction:'),
      h4('Size of the diamond entered: '),
      verbatimTextOutput("inputValue"),
      h4('Predicted cost in US : '),
      verbatimTextOutput("prediction")
    )
  )
)