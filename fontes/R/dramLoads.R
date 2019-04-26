acertos <- matrix(c(1822.5,2038), ncol=1, byrow=TRUE)

colnames(acertos) <- c("LU")
rownames(acertos) <- c("Arquitetura 1","Arquitetura 2")
ac_data <- as.table(acertos)

ac_data 

par(xpd = TRUE, mar=c(5, 5, 5, 7), oma=c(0,0,0,0))
barplot(as.matrix(ac_data), main = "Loads DRAM",
        cex.lab=0.8,
        cex.axis = 0.8,
        beside=TRUE, ylim=c(1000, 2500), xpd = FALSE,
        cex.names = 0.8,
        col=grey.colors(n = 2, start = 0.1, end = 0.8))

legend(25, 99, rownames(acertos), cex=0.8, title="Configurações", bty="n",
       fill=grey.colors(n = 2, start = 0.1, end = 0.8));