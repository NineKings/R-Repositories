v<-"CAGATAG"
w<-"CTGTATAG"
LCS<-function(v,w)
{
    n<-nchar(v)
    m<-nchar(w)
    s<-matrix(0,,nrow=n+1,ncol=m+1,byrow=TRUE)
    for(i in 1:n+1)
    for(j in 1:m+1)
    {
        if(substr(v,i-1,i-1)==substr(w,j-1,j-1)){
            s[i,j]=max((s[i-1,j]-4),(s[i,j-1]-4),(s[i-1,j-1]+5))
            }else if(substr(v,i-1,i-1)=="G"&substr(w,j-1,j-1)=="A"){
                s[i,j]=max((s[i-1,j]-4),(s[i,j-1]-4),(s[i-1,j-1]-1))
            }else if(substr(v,i-1,i-1)=="A"&substr(w,j-1,j-1)=="G"){
                s[i,j]=max((s[i-1,j]-4),(s[i,j-1]-4),(s[i-1,j-1]-1))
            }else if(substr(v,i-1,i-1)=="C"&substr(w,j-1,j-1)=="T"){
                s[i,j]=max((s[i-1,j]-4),(s[i,j-1]-4),(s[i-1,j-1]-1))
            }else if(substr(v,i-1,i-1)=="T"&substr(w,j-1,j-1)=="C"){
                s[i,j]=max((s[i-1,j]-4),(s[i,j-1]-4),(s[i-1,j-1]-1))
            }else{
                s[i,j]=max((s[i-1,j]-4),(s[i,j-1]-4),(s[i-1,j-1]-4))
            }
    }
    return(s)
}
print(LCS(v, w))