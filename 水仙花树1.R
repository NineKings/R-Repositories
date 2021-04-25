for(i in 100:999){

    temp<-as.character(i)
    A<-as.numeric(substr(temp,1,1));
    B<-as.numeric(substr(temp,2,2));
    C<-as.numeric(substr(temp,3,3));

if(i==(A^3+B^3+C^3)){
    cat(i,"")
    
}

}