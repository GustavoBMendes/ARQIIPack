acertos <- matrix(c(96.054,	94.392,	94.814,	94.652, 99.486,
                    96.889,	96.467,	95.472, 99.982,	99.738,
                    99.744,	99.381, 99.996,	99.994,	99.996,
                    99.996, 98.287,	95.771,	95.287,	95.190), ncol=10, byrow=TRUE)

colnames(acertos) <- c("BT","CG","DC","EP","FT","IS","LU","MG","SP","UA")
rownames(acertos) <- c("Arquitetura 1","Arquitetura 2")
ac_data <- as.table(acertos)

ac_data 

par(xpd = TRUE, mar=c(2, 2, 2, 5), oma=c(0,0,0,0))
barplot(as.matrix(ac_data),
        ylab="Taxa de Acertos", cex.lab=0.8,
        cex.axis = 0.8,
        beside=TRUE, ylim=c(94, 100), xpd = FALSE,
        cex.names = 0.8,
        col=grey.colors(n = 2, start = 0.1, end = 0.8))

legend(29, 99, rownames(acertos), cex=0.8, title="Configurações", bty="n",
       fill=grey.colors(n = 2, start = 0.1, end = 0.8));

