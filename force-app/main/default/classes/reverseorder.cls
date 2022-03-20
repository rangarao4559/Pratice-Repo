public class reverseorder {
   integer[] a=new integer[10];
    public reverseorder(){
        for(integer i=0;i<10;i++)
            a[i]=i*10;
        
        for(integer i=0;i<10;i++)
            system.debug(a[i]);
        
        system.debug('arrayelements in reverseorder');
         for(integer i=a.size()-1;i>=0;i--)  
             system.debug(a[i]);
    }

}