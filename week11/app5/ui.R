# ---- app5-ui ----

library(shiny)
library(minimap)

fluidPage(
  titlePanel("Dynamic UI"),
  
  sidebarLayout(
    sidebarPanel(

      selectInput("country", "Which Country do you live in?", #'county' is an ID, it is to help you keep organized. can be any other names
                  choices = c("USA", "Canada",'China')),
      uiOutput("region")

    ),
    
    mainPanel(
      textOutput("message")
    )
  )
)