getwd()
setwd("C:/Users/GM/OneDrive/Documents/R/Hello.r")
getwd()
library(data.table)
carama.csv<- fread("annual-enterprise-survey-2020-financial-year-provisional-csv.csv")
head(carama.csv)
fread("A,B,F,2,34")
fread("A,B\n1,2\n3,4")
fread("A,B
      1,2
      3,4
      ")
fread("
This is perhaps a banner line or two or ten.
A,B
1,2
3,4
")
library(xlsx)
read_file<- read.xlsx("newfile.xlsx",sheetIndex = 1, header = TRUE)
head(read_file)
library(readxl)
read_file1<- read_excel("newfile.xlsx",)
head(read_file1)
library(writexl)
write_xlsx(carama.csv,"camra.xlsx")
library(openxlsx)
datasets<-readxl_example("datasets.xlsx")
read_excel(datasets)
read_excel(datasets,2)
read_excel(datasets,"mtcars")
read_excel(datasets, skip = 148, col_names = FALSE)
read_excel(datasets, col_types = c("text","guess","numeric","guess","guess"))
df <- read_excel(readxl_example("clippy.xlsx"), col_types = c("text", "list"))
df$value
sapply(df$value, class)
read_excel(datasets,n_max=3)
read_excel(datasets, range = "C1:E7")
datasets
read_excel(datasets, range = "R1C2:R2C5")
read_excel(datasets, range = "mtcars!B1:D5")
read_excel(datasets, range = cell_cols("B:D"))
names(read_excel(readxl_example("datasets.xlsx"), n_max = 0))
library(data.table)
df<- data.frame(x=rnorm(9), y=rep(c('a','b','c'),each=3), z= rnorm(9))
df
dt<- data.table(x=rnorm(9), y=rep(c('a','b','c'),each=3), z= rnorm(9))
dt
tables()
dt[,list(mean(x),sum(z))]
dt[,table(y)]
dt[, w:=z^2]
dt[, a:=x>0]
dt
DT1<- data.table(x=c('a','a','b','dt1'), y=1:4)
DT2<- data.table(x=c('a','b','bt2'),z= 5:7)
setkey(DT1,x); setkey(DT2,x)
merge(DT1,DT2)
set.seed(13435)
X<-data.frame("var1"=sample(1:5), "var2"=sample(6:10),"var3"=sample(11:15))
X<- X[sample(1:5),]; X$var2[c(1,3)]=NA
X[,1]
X[1:2,"var2"]
X[(rX$va1 <=3 & X$var3 >11),]
X[(X$var1 <=3| X$var3 >15),]
sort(X$var1)
sort(X$var1,decreasing = TRUE)
sort(X$var2, na.last = TRUE)
X[order(X$var1),]
X[order(X$var3),]
X[order(X$var1,X$var3,X$var2,na.last = TRUE),]
df<- data.frame(col1= c(1:3,NA), col2= c("this","is",NA,"that"),col3=c(TRUE,FALSE,TRUE,FALSE),
                col4=c(2.3,4.2,11,NA),stringsAsFactors = TRUE) 
df$col4[is.na(df$col4)]<- mean(df$col4,na.rm = TRUE)
df$col2(df$col2,na.rm = TRUE)
complete.cases(df)
df
df$col2<-complete.cases(df$col2)
which(is.na(df$col2))
df$col2[]
df
getwd()
setwd('C:/Users/GM/OneDrive/Documents/R/Hello.r')
getwd()
install.packages('NHANES')
library(NHANES)
library(dplyr)
