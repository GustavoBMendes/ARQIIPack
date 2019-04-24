acertos <- matrix(c(3.29375,20.08875,2.4175,1.0575,11.605,
                    5.2125,5.54,5.9625,6.22875,2.83125,
                    3.24125,20.92375,2.87,1.38375, 12.1975,
                    6.29125,6.23375,9.3375,7.05652,3.30625), ncol=10, byrow=TRUE)

colnames(acertos) <- c("BT","CG","DC","EP","FT","IS","LU","MG","SP","UA")
rownames(acertos) <- c("Arquitetura 1","Arquitetura 2")
ac_data <- as.table(acertos)

ac_data 

par(xpd = TRUE, mar=c(5, 5, 5, 5), oma=c(0,0,0,0))
barplot(as.matrix(ac_data), main = "Cache rate",
        ylab="Em (%)", cex.lab=0.8,
        cex.axis = 0.8,
        beside=TRUE, ylim=c(0, 25), xpd = FALSE,
        cex.names = 0.8,
        col=grey.colors(n = 2, start = 0.1, end = 0.8))

legend(29, 99, rownames(acertos), cex=0.8, title="Configurações", bty="n",
       fill=grey.colors(n = 2, start = 0.1, end = 0.8));