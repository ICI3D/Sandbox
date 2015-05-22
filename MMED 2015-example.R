#In an RCT of 1000 people, 500 received the experimental drug and the rest placebo
#Of the 500 who received treatment, 40 developed disease, while in the placebo group 60 developed disease
##Risk ratio of exposure:
RR <-(40/500)/(60/500) ##Ratio of  Incidence of disease in the exposed Vs incidence of disease in unexposed
RR ##the Treatment is protective
#To obtain the probability of getting a result as extreme as the one observed, let's assume this follows a hypergeometric distribution, no bias, and sampling without replacement
sum(dhyper(0:40,500,500,100, log=F)) ## the result is significant
#probaility of getting >= 40 deaths
cbind(40:100,(dhyper(40:100,500,500,100, log=F)))
##Plotting probaility of getting >= 40 deaths
plot(seq(40,100), dhyper(40:100,500,500,100, log=F), xlab="No. who developed disease",
     lines(seq(40,100), dhyper(40:100,500,500,100, log=F)))
abline(h=0.05,untf=F, col="blue", lty=1, lwd=2) ## line showing statistical significance