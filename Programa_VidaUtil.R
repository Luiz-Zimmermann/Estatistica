dados <- read.table("vida_util.csv", header = TRUE, sep = ";", dec = ",")
str(dados)

##  Obter o tamanho da amostra
length(dados$Tempo)

## Obter som�torio
sum(dados$Tempo)

## Minimo
min(dados$Tempo)

##M�ximo
max(dados$Tempo)

##Amplitude total
amplitude <- max(dados$Tempo) - min(dados$Tempo)
amplitude

##Obter m�dia aritim�tica
mean(dados$Tempo)

##Obter mediana
median(dados$Tempo)

##Obter a moda
subset (table(dados$Tempo),table(dados$Tempo)==max (table(dados$Tempo)))

##Obtendo a vari�ncia 
var(dados$Tempo)

##Obter o desvio padr�o
sd(dados$Tempo)

##Coefeciente de varia��o cv = (S/X linha) *100
cv <- 100 * sd(dados$Tempo)/mean(dados$Tempo)
cv

