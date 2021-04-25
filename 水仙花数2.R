for(i in 1:9)
for(j in 0:9)
for(k in 0:9)
{
    if(i^3+j^3+k^3==i*100+j*10+k)
        print(i*100+j*10+k);
}