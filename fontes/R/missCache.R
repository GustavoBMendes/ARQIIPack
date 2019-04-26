acertos <- matrix(c(34.659,19.726,135.611,2.218, 7.473,
                    1.350,181.931,4.095,108.375,37.353,
                    34.052,20.501,160.757,2.902, 7.748,
                    1.547,94.29,14.293,260.359, 43.758), ncol=10, byrow=TRUE)

colnames(acertos) <- c("BT","CG","DC","EP","FT","IS","LU","MG","SP","UA")
rownames(acertos) <- c("Arquitetura 1","Arquitetura 2")
ac_data <- as.table(acertos)

ac_data 

par(xpd = TRUE, mar=c(5, 5, 5, 5), oma=c(0,0,0,0))
barplot(as.matrix(ac_data), main = "Número médio de cache miss",
        ylab="Em Milhões de dados", cex.lab=0.8,
        cex.axis = 0.8,
        beside=TRUE, ylim=c(0, 200), xpd = FALSE,
        cex.names = 0.8,
        col=grey.colors(n = 2, start = 0.1, end = 0.8))

legend(29, 99, rownames(acertos), cex=0.8, title="Configurações", bty="n",
       fill=grey.colors(n = 2, start = 0.1, end = 0.8));