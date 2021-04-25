
for(i in 100:900)
{
    a=floor(i/100)
    c=i%%10
    b=(i-100*a-c)/10
if(100*a+10*b+c==a^3+b^3+c^3)
    print(i)
b       
}

//或者
for(i in 100:900)
{
    a=i%/%100
    c=i%%10
    b=(i-a*100-c)/10
if(100*a+10*b+c==a*a*a+b*b*b+c*c*c)
    print(i)

}



//sum<-0
for(i in 1:500)
{
    if(i%%3==0&&i%%2==0)
       sum=sum+i;
}
print(sum)




//