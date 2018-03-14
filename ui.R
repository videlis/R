library(shiny)
library(shinydashboard)
shinyUI(
  dashboardPage(
    dashboardHeader(title = "DASHBOARD APP"),
    dashboardSidebar(
      sliderInput("bins","Number of Breaks",1,100,50),
      sidebarMenu(
      menuItem("Dashboard",tabName = "dashboard", icon = icon("dashboard"),
        menuSubItem("Dashboard Finance",tabName = "finance"),
        menuSubItem("Dashboard Sales",tabName = "sales")),
      menuItem("Detail Analysis",tabName = "Detail Analysis", icon = icon("calendar")),
        menuSubItem("Results of Analysis",tabName = "Results"),
        menuSubItem("Interpretation of the results",tabName = "Interpretation"),
      menuItem("Raw Data",tabName = "raw data")
    )),
    dashboardBody(
      tabItems(
        tabItem(tabName = "dashboard",
                fluidRow(
                  box(plotOutput("histogram"))
                  
                )
              ),
        tabItem(tabName = "finance",
                h1("Finance Dashboard")
                ),
        tabItem(tabName = "sales",
                h2("Sales Dashboard")
                )
      ),
      tabItems(
        tabItem(tabName = "Detail Analysis",
                fluidRow(
                  box(plotOutput("histogram"))
                  
                )
        ),
        tabItem(tabName = "Results",
                h1("Results of Analysis")
                ),
        tabItem(tabName = "Interpretation",
                h2("Interpretation of results")
                )
      )
      
    )
  )
)
