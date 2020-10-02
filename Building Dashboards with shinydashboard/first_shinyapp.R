

############Create an empty header.
#Create an empty sidebar.
#Create an empty body.

install.packages("shiny")

library(shinydashboard)

# Create an empty header
header <- dashboardHeader()

# Create an empty sidebar
sidebar <- dashboardSidebar()

# Create an empty body
body <- dashboardBody()

###############################

# Combine the header, sidebar, and body to create a dashboard page.
# Use shinyApp() from the shiny package to run the application.

header <- dashboardHeader()
sidebar <- dashboardSidebar()
body <- dashboardBody()

# Create the UI using the header, sidebar, and body
ui <- dashboardPage(header,sidebar,body)

server <- function(input, output) {}

shinyApp(ui, server)


