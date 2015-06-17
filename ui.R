library(shiny)
shinyUI(fluidPage(theme = "bootstrap2.css",
    headerPanel("Fishery Data"),
    sidebarLayout(position = "right",
        sidebarPanel(
            tabsetPanel(type = "tabs", 
                        tabPanel("Description",
                                 h5('The main purpose of this visualization is to indicate the variance of fishery in Greece between 2002 and 2006')
                                ),        
                        tabPanel("License",
                                 h5('Data Source:',a("Reference Link", href="http://www.statistics.gr/portal/page/portal/ESYE/PAGE-database")),
                                                                           
                                 HTML('<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/InteractiveResource" property="dct:title" rel="dct:type">Fishery Data Visualization</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.'),
                                 br()
                        ) 
            )),
        mainPanel(
            htmlOutput("fishery")
    ))
        ))
