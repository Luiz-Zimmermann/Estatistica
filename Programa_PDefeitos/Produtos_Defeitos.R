dados <- read.table("NroDefeitos.csv", header = TRUE, sep = ";", dec = ",")
 
freq.ab <- table(dados)
freq.rel <- prop.table(prop.table(table(dados)))*100

table(dados)

tabela2 <- matrix(c(freq.ab, freq.rel),nrow=6, ncol=2)
row.names(tabela2)<-c("0","1","2","3","4","7")
colnames(tabela2)<-c("frequencia","percentual")
tabela2      #visualiza os resultados na tabela

barplot(table(dados), beside = T,main = "Distribui��o do n�meros de defeitos", xlab = "N�mero de defeitos", ylab = "N�mero de pecas", col = "magenta")







