num=1000			##�̦h��������
init=100			##��l�w�X�Ӽ�
capital=init 	##�ثe�w�X�Ӽ�
PL=rep(0,1)		##PL[i]����i�����l�q(�w�X�Ӽ�)
i=1				##���i��

rout=sample(0:1,size=1,prob=c(19/37,18/37),replace=T)	##�������L��Ĺ
bid=1			##�@�}�l��1�T

while (capital>=bid && i<=num){	##�u�n��W�w�X>�n���w�X�A�B�䧽�٨S�����N�i�J�j��
rout=sample(0:1,size=1,prob=c(19/37,18/37),replace=T)##���L��Ĺ����

	if(rout==1){PL[i]=bid		##�o��Ĺ�AĹbid�T�w�X
	bid=1	 				##Ĺ���ܤU����1�T
	}else{PL[i]=-bid    		##�o����A��bid�T�w�X
	bid=bid*2}				##�骺�ܤU����[��
	
capital=capital+PL[i]		##�p���i+1����W���w�X
i=i+1}					##�ǳƪ���i���A�^�hwhile�j��

plot(init+cumsum(PL),lwd=3,font=2,type="l",col="red"
,xlab="�U�`����",ylab="�֭p�w�X��",main="���L���B")
abline(h=init,col="green",lwd=2)