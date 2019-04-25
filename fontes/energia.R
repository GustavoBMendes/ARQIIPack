acertos <- matrix(c(70,10,550,28, 10,
                    3.25,136,12.5,145,90,
                    60,9,500,27, 8.4,
                    2.75,119,19.4,153, 72), ncol=10, byrow=TRUE)

colnames(acertos) <- c("BT","CG","DC","EP","FT","IS","LU","MG","SP","UA")
rownames(acertos) <- c("Arquitetura 1","Arquitetura 2")
ac_data <- as.table(acertos)

ac_data 

par(xpd = TRUE, mar=c(5, 5, 5, 5), oma=c(0,0,0,0))
barplot(as.matrix(ac_data), main = "Consumo total de energia",
        ylab="Energia (J)", cex.lab=0.8,
        cex.axis = 0.8,
        beside=TRUE, ylim=c(0, 200), xpd = FALSE,
        cex.names = 0.8,
        col=grey.colors(n = 2, start = 0.1, end = 0.8))

legend(29, 99, rownames(acertos), cex=0.8, title="Configurações", bty="n",
       fill=grey.colors(n = 2, start = 0.1, end = 0.8));