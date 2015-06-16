library(googleVis)
library(shiny)

shinyUI(fluidPage(
  titlePanel("Fishery_data"),
  sidebarLayout(
    sidebarPanel(
      fileInput('file1', 'mydata2.csv',
                accept=c('text/csv', 
								 'text/comma-separated-values,text/plain', 
								 '.csv')),
      tags$hr(),
      checkboxInput('header', 'Header', TRUE),
      radioButtons('sep', 'Separator',
                   c(Comma=',',
                     Semicolon=';',
                     Tab='\t'),
                   ','),
      radioButtons('quote', 'Quote',
                   c(None='',
                     'Double Quote'='"',
                     'Single Quote'="'"),
                   '"')
    ),
    mainPanel(
      plotOutput('fishery')
    )
  )
))
