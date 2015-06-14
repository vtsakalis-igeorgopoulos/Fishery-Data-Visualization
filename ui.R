library(shiny)
shinyUI(fluidPage(theme = "bootstrap2.css",
#     tags$head(
#         tags$style(HTML("
#                         @import url('https://fonts.googleapis.com/css?family=Lato:300,400,700");
#                         
#                         h1 {
#                         font-family: 'Lobster', cursive;
#                         font-weight: 500;
#                         line-height: 1.1;
#                         color: #4d3a7d;
#                         }
#                         "))
#         ),
    headerPanel("Fishery data"),
    sidebarLayout(position = "right",
        sidebarPanel(
            tabsetPanel(type = "tabs", 
                        tabPanel("Description",
                                 h5('The main purpose of this visualization is to indicate the variance of fishery in Greece between 2002 and 2006'),
                                 ),        
                        tabPanel("License",
                                 h5('Data Source:',a("Reference Link", href="http://www.statistics.gr/portal/page/portal/ESYE/PAGE-database")),
                                     h5('Bootstrap "Superhero" theme:',a("Reference Link", href="http://bootswatch.com/superhero/")),                                     
                                 HTML('<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Άδεια Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />Το έργο με τίτλο <span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Fishing Data Visualization</span> από τον δημιουργό<a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/vtsakalis-igeorgopoulos/Fishery-Data-Visualization" property="cc:attributionName" rel="cc:attributionURL">vtsakalis-igeorgopoulos</a> διατίθεται με την άδεια <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Αναφορά Δημιουργού 4.0 Διεθνές </a>.,
                                 br()
                        ) 
            )),
        mainPanel(
            htmlOutput("view")
            , width = 7
  )
