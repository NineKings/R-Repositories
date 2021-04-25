SmithWaterman<-function(a,b)
{
    La<-nchar(a)
    Lb<-nchar(b)
    s<-matrix(0,nrow=La+1,ncol=Lb+1,byrow=TRUE)
    for(i in 1:La+1)
    for(j in 1:Lb+1)
    {
        if(substr(a,i-1,i-1)==substr(b,j-1,j-1)){
            s[i,j]=max((s[i-1,j]-4),(s[i,j-1]-4),(s[i-1,j-1]+5))
            }else if(substr(a,i-1,i-1)=="G"&substr(b,j-1,j-1)=="A"){
                s[i,j]=max((s[i-1,j]-4),(s[i,j-1]-4),(s[i-1,j-1]-1))
            }else if(substr(a,i-1,i-1)=="A"&substr(b,j-1,j-1)=="G"){
                s[i,j]=max((s[i-1,j]-4),(s[i,j-1]-4),(s[i-1,j-1]-1))
            }else if(substr(a,i-1,i-1)=="C"&substr(b,j-1,j-1)=="T"){
                s[i,j]=max((s[i-1,j]-4),(s[i,j-1]-4),(s[i-1,j-1]-1))
            }else if(substr(a,i-1,i-1)=="T"&substr(b,j-1,j-1)=="C"){
                s[i,j]=max((s[i-1,j]-4),(s[i,j-1]-4),(s[i-1,j-1]-1))
            }else{
                s[i,j]=max((s[i-1,j]-4),(s[i,j-1]-4),(s[i-1,j-1]-4))
            }
    }
    return(s)
}
print(SmithWaterman("CAGATAG","CTGTATAG"))