library(readxl)
library(writexl)

Upregulated<- read_excel("C:\\Users\\OMIT SEN\\Dropbox\\Comorbidity Detection\\All Up and Down Comorbidity Datasets\\All up-regulated.xlsx")
Downregulated<- read_excel("C:\\Users\\OMIT SEN\\Dropbox\\Comorbidity Detection\\All Up and Down Comorbidity Datasets\\All down-regulated.xlsx")

a<-Upregulated$Covid19
b<-Upregulated$Hypertension
c<-Upregulated$Diabetes
d<-Upregulated$Obesity
e<-Upregulated$LungCancer2
#f<-Upregulated$Lung

a[a%in%b]#Hypertension
a[a%in%c]#Diabetes
a[a%in%d]#Obesity
a[a%in%e]#Lung Cancer
#a[a%in%f]#Lung

a[a%in%b]#Hypertension
df1<-data.frame(a[a%in%b])
write_xlsx(df1,"C:\\Users\\OMIT SEN\\Dropbox\\Comorbidity Detection\\All Up and Down Comorbidity Datasets\\Up-hypertension.xlsx")

a[a%in%c]#Diabetes
df2<-data.frame(a[a%in%c])
write_xlsx(df2,"C:\\Users\\OMIT SEN\\Dropbox\\Comorbidity Detection\\All Up and Down Comorbidity Datasets\\Up-diabetes.xlsx")

a[a%in%d]#Obesity
df3<-data.frame(a[a%in%d])
write_xlsx(df3,"C:\\Users\\OMIT SEN\\Dropbox\\Comorbidity Detection\\All Up and Down Comorbidity Datasets\\Up-obesity.xlsx")

a[a%in%e]#Lung Cancer
df4<-data.frame(a[a%in%e])
write_xlsx(df4,"C:\\Users\\OMIT SEN\\Dropbox\\Comorbidity Detection\\All Up and Down Comorbidity Datasets\\Up-lungCancer2.xlsx")

# #a[a%in%f]#Lung
# #df5<-data.frame(a[a%in%f])
# #write_xlsx(df5,"D:\\Research For Paper\\MSc thesis\\RNASeq Data(GREIN)\\Up-Lung.xlsx")

# -----------------------------------------------------------------
A<-Downregulated$Covid19
B<-Downregulated$Hypertension
C<-Downregulated$Diabetes
D<-Downregulated$Obesity
E<-Downregulated$LungCancer2
#F<-Downregulated$Lung

A[A%in%B]#Hypertension
A[A%in%C]#Diabetes
A[A%in%D]#Obesity
A[A%in%E]#Lung Cancer
#A[A%in%F]#Lung

A[A%in%B]#Hypertension
DF1<-data.frame(A[A%in%B])
write_xlsx(DF1,"C:\\Users\\OMIT SEN\\Dropbox\\Comorbidity Detection\\All Up and Down Comorbidity Datasets\\Down-hypertension.xlsx")

A[A%in%C]#Diabetes
DF2<-data.frame(A[A%in%C])
write_xlsx(DF2,"C:\\Users\\OMIT SEN\\Dropbox\\Comorbidity Detection\\All Up and Down Comorbidity Datasets\\Down-diabetes.xlsx")

A[A%in%D]#Obesity
DF3<-data.frame(A[A%in%D])
write_xlsx(DF3,"C:\\Users\\OMIT SEN\\Dropbox\\Comorbidity Detection\\All Up and Down Comorbidity Datasets\\Down-obesity.xlsx")

A[A%in%E]#Lung Cancer
DF4<-data.frame(A[A%in%E])
write_xlsx(DF4,"C:\\Users\\OMIT SEN\\Dropbox\\Comorbidity Detection\\All Up and Down Comorbidity Datasets\\Down-lungCancer2.xlsx")

# #A[A%in%F]#Lung
# #DF5<-data.frame(A[A%in%F])
# #write_xlsx(DF5,"D:\\Research For Paper\\MSc thesis\\RNASeq Data(GREIN)\\Down-Lung.xlsx")
# --------------------------------------------------------------------
