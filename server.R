library(shiny)


description <- function(bmi) {
    res <- as.numeric(bmi)
    print(res)
    
    if (res <= 18.5) {
        c <- "Underweight"
    }
    if (res > 18.5 && res <= 24.9) {
        c <- "Normal weight"
    }
    if (res >= 25 && res <= 29.9) {
        c <- "Overweight"
    }
    if (res >= 30 && res <= 39.9) {
        c <- "Obese"
    }
    if (res >= 40) {
        c <- "Morbidly obese"
    }
    
    print(c)
    
} 


shinyServer(
    function(input, output) {
        
        result <- eventReactive(input$action, {
            (input$weight)/(input$height * input$height)
            
            }
        )
        
        output$nResult <- renderText({result()})
        output$nText <- renderText({description(result())})
    }
)