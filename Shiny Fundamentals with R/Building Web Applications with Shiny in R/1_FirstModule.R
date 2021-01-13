
##########"Hello, World" app output (UI/Server)

ui <- fluidPage(
  # CODE BELOW: Add a text input "name"
  textInput("name", "Enter a name:")
  
)

server <- function(input, output) {
  
}

shinyApp(ui = ui, server = server)

###

ui <- fluidPage(
  textInput("name", "What is your name?"),
  # CODE BELOW: Display the text output, greeting
  # Make sure to add a comma after textInput()
  textOutput("greeting")
)

server <- function(input, output) {
  # CODE BELOW: Render a text output, greeting
  output$greeting<- renderText({
    paste("Hello,",input$name)
  })
  
  
}

shinyApp(ui = ui, server = server)


##############Build a babynames explorer Shiny app

ui <- fluidPage(
  # CODE BELOW: Add a text input "name"
  textInput("name","Enter your Name","Narendra"),
  
)
server <- function(input, output, session) {
  
}
shinyApp(ui = ui, server = server)


##############Add output (UI/Server)

ui <- fluidPage(
  textInput('name', 'Enter Name', 'David'),
  # CODE BELOW: Display the plot output named 'trend'
  plotOutput('trend')
)
server <- function(input, output, session) {
  # CODE BELOW: Render an empty plot and assign to output named 'trend'
  output$trend <- renderPlot({
    ggplot()
  })
}
shinyApp(ui = ui, server = server)