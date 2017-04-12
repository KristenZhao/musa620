# ---- app3-ui ----

library(shiny)

fluidPage(
  titlePanel("Slider App"),
  sidebarLayout(
    sidebarPanel(
      h1("Move the Slider!"),
      sliderInput("slider1", "Slide Me!", 0, 100, 75)
    ),
    mainPanel(
      h3("Slider Value:"),

      textOutput("starfish")
    )
  )
)