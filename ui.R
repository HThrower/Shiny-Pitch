library(shiny)
library(datasets)
data(mtcars)

shinyUI(fluidPage(
  
  titlePanel(title =h4("Demonstration of renderPlot() - MPG Prediction Based on Cylinder Size histogram", align="center")),
  sidebarLayout(
      sidebarPanel(
        selectInput("var", "1.Select the variable from mtcars dataset", choices=c("MPG" = 1, "Cyl"= 2)),
                
        sliderInput("bins", "2.Select the number of Distance BINS for histogram",min = 0, max = 40, value = 20),
                
        radioButtons("color", "3.Select the colour of histogram", choices = c("Green","Red","Yellow"),selected = "Green")
     
       ),
      mainPanel(
        plotOutput("myhist")
        
  )
    )
  ))