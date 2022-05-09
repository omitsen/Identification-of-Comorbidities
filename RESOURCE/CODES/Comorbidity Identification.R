library(PEIP)
library(readxl)
library(gdata)
library(writexl)

#Combined<- read_excel("C:\\Users\\OMIT SEN\\Dropbox\\Comorbidity Detection\\Covid-19 Sig Datasets\\Less than 0.05\\10, 30, 11\\Up-Down regulated\\.01.xlsx")
#Combined<- read_excel("C:\\Users\\OMIT SEN\\Dropbox\\Comorbidity Detection\\Covid-19 Sig Datasets\\Less than 0.05\\19, 30, 79\\Up-Down regulated\\.05.xlsx")
#Combined<- read_excel("C:\\Users\\OMIT SEN\\Dropbox\\Comorbidity Detection\\Covid-19 Sig Datasets\\Less than 0.05\\19, 30, 79\\Up-regulated\\.05.xlsx")
Combined<- read_excel("C:\\Users\\OMIT SEN\\Dropbox\\Comorbidity Detection\\Diseases\\GSE (Covid19) Up-Down\\.05.xlsx")

Counts <- lengths(strsplit(Combined$Genes, ";"))
Combined<-data.frame(Combined$'Term',Combined$'P-value',Combined$'Genes',Counts)
Combined<-Combined[order(-Combined$Counts),]
#Combined<-Combined[1:50,]
Combined <- rename.vars(Combined, from = "Combined.Term", to = "Term")
Combined <- rename.vars(Combined, from = "Combined..P.value.", to = "P-value")
Combined <- rename.vars(Combined, from = "Combined.Genes", to = "Genes")
write_xlsx(Combined,"C:\\Users\\OMIT SEN\\Dropbox\\Comorbidity Detection\\Diseases\\GSE (Covid19) Up-Down\\Final Comorbidities .05.xlsx")
#out <- split( Combined,Combined$Counts)

