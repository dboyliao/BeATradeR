##???w?l?q?V?q?A?M???̨ΤU?`????f

#PL=c(19,8,-7,10,11,5,-3,20,12,-15)	##???w?q?V?q
PL=c(2,-1)
TWR=rep(0,100)	# ?O???C?@?ӤU?`???Ҫ????????S?v(1%~100%)

for (f in 1:100){HPR=1	
	for (i in 1:length(PL)){HPR=HPR*(1+(f/100)*(-PL[i]/min(PL)))}	##?p???U?`f???Ҫ????S
TWR[f]=HPR^(1/length(PL))	##?N?p???X?Ӫ????S?v???X?󥭧?
}
par(family="STKaiti") #Only for Mac
plot(TWR,col="red",type="l",font=2,lwd=3,xlab="?U?`????(%)"
,main="Optimal f",ylab="???S?v")

points(tail(order(TWR),1),max(TWR),col="blue",pch=16)


abline(h=1,col="green",lty=1,lwd=2)	##?l?q?⥭?u
abline(v=tail(order(TWR),1),col="blue",lty=1,lwd=1)	##?̨ΤU?`????



text(tail(order(TWR),1)+20,max(TWR-0.3),labels=paste("??f=",tail(order(TWR),1),"%?A?o?ͳ̤j??",max(TWR)))
