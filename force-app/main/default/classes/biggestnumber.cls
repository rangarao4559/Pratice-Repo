public class biggestnumber {
    integer[] a=new integer[]{100,-20,30};
        public biggestnumber(){
        for(integer i=0; i<a.size()-1; i++){          
      if( a[i] > a[i+1]){
        integer temp = a[i];
        a[i] = a[i+1];
        a[i+1] = temp;
    }
        }
        System.debug('The biggest element is - ' + a[a.size()-1]);    
}
}