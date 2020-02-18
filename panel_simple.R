library(plm)
library(readxl)

mydata<-read_xlsx("gg.xlsx")
grun.fe <- plm(InvEffit ~ FRQ_it + Age + Size + Tangibility + Cash_surplus,
               data = mydata, model = "within")
summary(grun.fe)