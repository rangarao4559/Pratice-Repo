public class future {
    @future
    public static void show(){
        System.debug('Show one');
        System.debug('Show Two');
        System.debug('Show Three');
    }
    @future
    public static void call(){
        System.debug('Call One');
        System.debug('Call Two');
        System.debug('Call Three');
    }
    public void invoke(){
        System.debug('Invoke One');
        System.debug('Invoke Two');
        show();
        System.debug('Invoke Three');
        System.debug('Invoke Four');
        call();
        System.debug('Invoke Five');
        System.debug('Invoke Six');
    }
}