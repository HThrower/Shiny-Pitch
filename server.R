library(shiny)
library(datasets)
data(mtcars)

shinyServer(
  
  function(input, output) {
    
output$myhist<- renderPlot({
   coln <- as.numeric(input$var)
   hist(mtcars[,coln], breaks=seq(0, max(mtcars[,coln]), l=input$bins+1),col=input$color)
   
    })
  }
)