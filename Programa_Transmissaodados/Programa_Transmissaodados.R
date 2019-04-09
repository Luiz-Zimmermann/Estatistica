dados <- read.table("TxFalhas.csv", header = TRUE, sep = ";", dec = ",")
str(dados)

resumo1 = aggregate (dados[, c("Falhas")], list(Veloc=dados$Veloc), mean)
resumo2 = aggregate (dados[, c("Falhas")], list(Veloc=dados$Veloc), sd)
resumo = merge(resumo1, resumo2, by="Veloc", suffixes=c("média","desvio"))
resumo

boxplot (dados$Falhas ~ dados$Veloc, las=1)

resumo3 = aggregate (dados[, c("Falhas")], list(Arq=dados$Arq), mean)
resumo4 = aggregate (dados[, c("Falhas")], list(Arq=dados$Arq), sd)
resumo = merge(resumo3, resumo4, by="Arq", suffixes=c("média","desvio"))
resumo

boxplot (dados$Falhas ~ dados$Arq, las=1)


resumo5 = aggregate (dados[, c("Falhas")], list(Cabo=dados$Cabo), mean)
resumo6 = aggregate (dados[, c("Falhas")], list(Cabo=dados$Cabo), sd)
resumo = merge(resumo5, resumo6, by="Cabo", suffixes=c("média","desvio"))
resumo

boxplot (dados$Falhas ~ dados$Cabo, las=1)


tapply(dados$Falhas, list(dados$Veloc, dados$Cabo), FUN = mean,na.rm = TRUE)

tapply(dados$Falhas, list(dados$Veloc, dados$Cabo), FUN = sd,na.rm = TRUE)

library(fdth) #carrega o pacote R Output

class <- fdt(dados$Falhas, h=1, start=32, end=38)
class

hist (dados$Falhas, nclass=6, xlab="Taxa de Falhas",
      ylab="Numero de observações", col="blue",
      main="Distribuição da taxa de falhas")




