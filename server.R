
# data source: http://www.statistics.gr/portal/page/portal/ESYE/PAGE-database
> library(googleVis)

> library(shiny)

#import data
> Fishery_data=read.csv2("mydata2.csv", header = FALSE)

> col_names<-c("Quantity","Year","Region")

#rename columns
> colnames(Fishery_data)<-col_names

#display data
> Fishery_data
   Quantity Year                       Region
1   1430669 2002 Eastern Macedonia and Thrace
2   5845920 2002            Central Macedonia
3    372826 2002                     Thessaly
4    423879 2002                       Epirus
5   2842340 2002               Ionian Islands
6   3365005 2002               Western Greece
7   4517722 2002               Central Greece
8   2844553 2002                  Peloponnese
9   6957995 2002                       Attica
10 13147437 2002              Northern Aegean
11  5737959 2002              Southern Aegean
12  2802008 2002                        Crete
13   850448 2003 Eastern Macedonia and Thrace
14 10679035 2003            Central Macedonia
15   374621 2003                     Thessaly
16   715525 2003                       Epirus
17  2926692 2003               Ionian Islands
18  3579510 2003               Western Greece
19  4089606 2003               Central Greece
20  2661239 2003                  Peloponnese
21  7316185 2003                       Attica
22 12728246 2003              Northern Aegean
23  2548723 2003              Southern Aegean
24  2757786 2003                        Crete
25  1189748 2004 Eastern Macedonia and Thrace
26 11194174 2004            Central Macedonia
27   180224 2004                     Thessaly
28   701516 2004                       Epirus
29  3097604 2004               Ionian Islands
30  3884494 2004               Western Greece
31  3739529 2004               Central Greece
32  2899288 2004                  Peloponnese
33  6723302 2004                       Attica
34 19921337 2004              Northern Aegean
35  6800440 2004              Southern Aegean
36  1433317 2004                        Crete
37  1322776 2005 Eastern Macedonia and Thrace
38 11447093 2005            Central Macedonia
39   173700 2005                     Thessaly
40   714351 2005                       Epirus
41  2768884 2005               Ionian Islands
42  4340983 2005               Western Greece
43  3603405 2005               Central Greece
44  2876191 2005                  Peloponnese
45  5730256 2005                       Attica
46 13466654 2005              Northern Aegean
47  6421557 2005              Southern Aegean
48  2710448 2005                        Crete
49  1170352 2006 Eastern Macedonia and Thrace
50  4413655 2006            Central Macedonia
51   171795 2006                     Thessaly
52   707704 2006                       Epirus
53  2809137 2006               Ionian Islands
54  4173755 2006               Western Greece
55  3530422 2006               Central Greece
56  2950052 2006                  Peloponnese
57  4140405 2006                       Attica
58 13890144 2006              Northern Aegean
59  6678135 2006              Southern Aegean
60  1506763 2006                        Crete

#create motion
> Motion=gvisMotionChart(Fishery_data,idvar="Region",timevar="Year",options=list(state='{"colorOption":"_UNIQUE_COLOR","showTrails":false};'))
> plot(Motion)

shinyServer(
    function(input, output) {
        output$fishery <- renderGvis({Motion})
    }
) 
