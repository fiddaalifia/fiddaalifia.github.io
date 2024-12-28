#ini tabel pertama
setwd("E:/Users/ASUS/Documents/Tugas UAS Metopel Fidda alifia gunsa")
library(readxl)
library(tidyverse)
library(dplyr)
library(kableExtra)
eksporpdbrumputlaut <- read_excel("ekspor pdb rumput laut.xlsx")
eksporpdbrumputlaut%>%kbl()%>%kable_styling()

#bikin ggplot
library(ggplot2)
ggplot(data=eksporpdbrumputlaut,aes(x=`Ekspor`,y=`PDB`)) +
  geom_point(color="green",size=2) +
  + labs(title="tabel 1. hubungan antara Nilai Ekspor dan PDB",
  + x= "ekspor(x)",
  + y="PDB(y)",
  + caption = "sumber: Badan Pusat Statistik") +
  + theme_classic()

#plot
library(ggplot2)
reg1<-lm(data=eksporpdbrumputlaut,PDB~ekspor)

#regresi
reg1<-lm(data=eksporpdbrumputlaut,PDB~Ekspor)
summary(reg1)
