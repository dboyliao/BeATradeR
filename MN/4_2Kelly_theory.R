pwin=0.5	##�Ӳv
odds=2		##�߲v,��1���AĹ�F���^1+odds���A��F��1��
nbet=40		##�䪺����

PL=rep(1,nbet)	##�l�q�V�q

for (f in 1:100){	##�p��U�ؤU�`���
PL[f]=((1+odds*f/100)^(nbet*pwin))*((1-f/100)^(nbet*(1-pwin)))
}
par(family="STKaiti") #Only for Mac
plot (PL, type="l",col="red",xlab="��`���",ylab="���S�v",
main=paste("�߲v=",odds,", �Ӳv=",pwin*100,"%",", ��`����",nbet),lwd=4)

abline(h=1,col="green",lty=1,lwd=2)	##�l�q�⥭�u
abline(v=(pwin*(1+odds)-1)*100/odds,col="blue",lty=1,lwd=1)	##�̨ΤU�`���