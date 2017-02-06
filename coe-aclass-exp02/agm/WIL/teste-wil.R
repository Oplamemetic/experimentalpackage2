dados <- read.table("/home/note/000-analise-exp-parte-2/coe-aclass/agm/WIL/IGD.csv", head=T, sep=",", dec=".")

Bestof2<-dados$B2
Genetico<-dados$GN

shapiro.test(Bestof2)
shapiro.test(Genetico)

result<-wilcox.test(Bestof2,Genetico)

result<-t.test(Bestof2,Genetico)
result

boxplot(Bestof2, Genetico, names=c("Bestof2", "Genetico"))
