dados <- read.table("NroDefeitos.csv", header = TRUE, sep = ";", dec = ",")
 
freq.rel <- prop.table(prop.table(table(dados)))*100

table(dados)

tabela1 <-matrix(c(table(dados)), nrow = 1, ncol = 6)
row.names(tabela1)<-c("f")
colnames(tabela1)<-c("0","1","2","3","4","7")
tabela1

tabela2 <- matrix(c( freq.rel),nrow=1, ncol=6)
row.names(tabela2)<-c("fr%")
colnames(tabela2)<-c("0","1","2","3","4","7")
tabela2      #visualiza os resultados na tabela

barplot(table(dados), beside = T, xlab = "Numero de defeitos", ylab = "Numero de pecas")







