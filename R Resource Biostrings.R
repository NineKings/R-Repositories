#GC含量计算公式是：[（G+C的总数量）/（A+T+C+G的总数量）] * 100%
library(Biostrings);#调用R包
filepath<-"C:/Users/13364/Desktop/实验3/SARS-CoV-S.fasta"#读取FASTA文件
x<-readDNAStringSet(filepath)#X的赋值变量
chrom<-x[[1]]
at<-rowSums(letterFrequencyInSlidingView(chrom,100,c("C","G")))/100#每100个碱基为窗口计算CG含量，类比推导其他的计算
summary(at)#开始画图
plot(at,type='l',axes=F,xlab=NA,ylab=NA,ylim=c(0.1,0.7))#Plot绘制图表，标识量域
axis(2,at=c(0.1,0.3,0.5,0.7),#纵坐标设置根据Summary函数计算结果
labels=c("10%","30%","50%","70%"))#纵坐标参量表示
axis(1,at=c(0,500,1000,1500,2000,2500,3000,3500,3800),#横坐标参量实际分度
labels=c("Start","500","1000","1500","2000","2500","3000","3500","End"))#横坐标参量表示