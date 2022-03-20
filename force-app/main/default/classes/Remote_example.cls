public class Remote_example {
      @RemoteAction
    public static String callMe(String name){
        String result='Your Name :'+name;
        return result;
    }
}