dados <- read.table("vida_util.csv", header = TRUE, sep = ";", dec = ",")
str(dados)

##  Obter o tamanho da amostra
length(dados$Tempo)

## Obter somátorio
sum(dados$Tempo)

## Minimo
min(dados$Tempo)

##Máximo
max(dados$Tempo)

##Amplitude total
amplitude <- max(dados$Tempo) - min(dados$Tempo)
amplitude

##Obter média aritimética
mean(dados$Tempo)

##Obter mediana
median(dados$Tempo)

##Obter a moda
subset (table(dados$Tempo),table(dados$Tempo)==max (table(dados$Tempo)))

##Obtendo a variância 
var(dados$Tempo)

##Obter o desvio padrão
sd(dados$Tempo)

##Coefeciente de variação cv = (S/X linha) *100
cv <- 100 * sd(dados$Tempo)/mean(dados$Tempo)
cv

