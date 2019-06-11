dados <- read.table("Exercicio1.csv", header = TRUE, sep = ";", dec = ",")

str(dados)

head(dados)

#requisitos

#Normalidade
shapiro.test(dados$Ruido[dados$Marca=="Dell"]) #DN
shapiro.test(dados$Ruido[dados$Marca=="Lenovo"]) #DN

#Homogeneidade
var.test(dados$Ruido~dados$Marca)

t.test(dados$Ruido~dados$Marca, var.equal = TRUE)

