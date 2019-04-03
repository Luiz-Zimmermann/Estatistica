dados <- read.table("Algoritmos.csv", header = TRUE, sep = ";", dec = ",")
str(dados)

resumo1 = aggregate( dados[ , c("Tempo")], list(Algoritmo=dados$Algoritmo), mean )
resumo2 = aggregate( dados[ , c("Tempo")], list(Algoritmo=dados$Algoritmo), sd )
resumo = merge( resumo1, resumo2, by="Algoritmo", suffixes=c(".média",".desvio") )
resumo

boxplot(dados$Tempo ~ dados$Algoritmo, las=1)