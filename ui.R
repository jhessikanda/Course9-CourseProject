library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Calculate your BMI (Body Mass Index)"),
    sidebarPanel(
        numericInput('weight', 'Your weight (kilograms)', 0, min = 0, step = 1),
        numericInput('height', 'Your height (meters)', 0, min = 0, step = 1),
        actionButton("action", label = "Calculate")
    ),
    mainPanel(
        h3('Your BMI is: '),
        textOutput("nResult"),
        textOutput("nText")
    )
))