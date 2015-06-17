
library(googleVis)

library(shiny)

#import data
Fishery_data=read.csv2("mydata2.csv", header = FALSE)

col_names<-c("Quantity","Year","Region")

#rename columns
colnames(Fishery_data)<-col_names

#create motion
Motion=gvisMotionChart(Fishery_data,idvar="Region",timevar="Year",options=list(state='{"colorOption":"_UNIQUE_COLOR","showTrails":false};'))
plot(Motion)

shinyServer(
    function(input, output) {
        output$fishery <- renderGvis({Motion})
    }
) 
