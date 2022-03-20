public class future_1 {
    @future
    public static void create(){
        system.debug('showone');
         system.debug('showtwo');
         system.debug('showthree');
    }
    
    public  void callme(){
         system.debug('showcall');
         system.debug('showtwo');
         system.debug('showthree');
        
    }
    public void invoke(){
        system.debug('invoke one');
         system.debug('invoke two');
        create();
       
         system.debug('invokethree');
        system.debug('invoke four');
        
         system.debug('invoke five');
         system.debug('invoke six');

    }

}