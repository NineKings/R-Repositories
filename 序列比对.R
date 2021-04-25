SmithWaterman<-function(a,b)
{
    La<-nchar(a)
    Lb<-nchar(b)
    s<-matrix(0,nrow=La+1,ncol=Lb+1,byrow=TRUE)
    for(i in 1:La+1)
    for(j in 1:Lb+1)
    {
        if(substr(a,i-1,i-1)==substr(b,j-1,j-1))
        {
            s[i,j]=max(s[i-1,j]-1,s[i,j-1]-1,(s[i-1,j-1]+2)) 
        }
        else if(substr(a,i-1,i-1)!=substr(b,j-1,j-1))
            {
                s[i,j]=max(s[i-1,j]-1,s[i,j-1]-1,s[i-1,j-1]-1)
            }
    }
            return(s)
}
    print(SmithWaterman("AGCACACA","ACACACTA"))


SmithWaterman<-function(a,b)
{
    La<-nchar(a)
    Lb<-nchar(b)
    s<-matrix(0,nrow=La+1,ncol=Lb+1,byrow=TRUE)
    for(i in 1:La+1)
    for(j in 1:Lb+1)
    {
        if(substr(a,i-1,i-1)==substr(b,j-1,j-1))
        {
            s[i,j]=max(s[i-1,j]-1,s[i,j-1]-1,(s[i-1,j-1]+2))
        }
        else if(substr(a,i-1,i-1)!=substr(b,j-1,j-1))
        {
            s[i,j]=max(s[i-1,j]-1,s[i,j-1]-1,s[i-1,j-1]-1)
        }
    }
    AlignmentA<-""
    AlignmentB<-""
    i<-nchar(a)+1
    j<-nchar(b)+1
    while(i>1&&j>1)
    {
        Score<-s[i,j]
        ScoreDiag<-s[i-1,j-1]
        ScoreUp<-s[i-1,j]
        ScoreLeft<-s[i,j-1]
        if(Score==ScoreDiag+2&&substr(a,i-1,i-1)==substr(b,j-1,j-1))
        {
            AlignmentA=paste(substr(a,i-1,i-1),AlignmentA,sep="")
            AlignmentB=paste(substr(b,j-1,j-1),AlignmentB,sep="")
            i=i-1
            j=j-1
        }
        else if(Score==ScoreDiag-1&&substr(a,i-1,i-1)!=substr(b,j-1,j-1))
        {
            AlignmentA=paste(substr(a,i-1,i-1),AlignmentA,sep="")
            AlignmentB=paste(substr(b,j-1,j-1),AlignmentB,sep="")
            i=i-1
            j=j-1
        }
        else if(Score==ScoreUp-1)
        {
            AlignmentA=paste(substr(a,i-1,i-1),AlignmentA,sep="")
            AlignmentB=paste("-",AlignmentB,sep="")
            i=i-1
        }
        else if(Score==ScoreLeft-1)
         {
            AlignmentA=paste("-",AlignmentA,sep="")
            AlignmentB=paste(substr(b,j-1,j-1),AlignmentB,sep="")
            j=j-1
         }
    }
    print(paste("序列a=",AlignmentA))
    print(paste("序列b=",AlignmentB))
}
SmithWaterman("ACACACTA","AGCACACA")