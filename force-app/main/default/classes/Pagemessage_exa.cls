public class Pagemessage_exa {
    public Pagemessage_exa(){
         Apexpages.Message m3=new Apexpages.Message(Apexpages.Severity.WARNING,'warning message');
       Apexpages.Message m4=new Apexpages.Message(Apexpages.Severity.INFO,'info mesSsage');
      Apexpages.Message m1=new Apexpages.Message(Apexpages.Severity.CONFIRM,'success message');
       Apexpages.Message m2=new Apexpages.Message(Apexpages.Severity.ERROR,'ERROR message');      
       Apexpages.addMessage(m1);
        Apexpages.addMessage(m2);
        Apexpages.addMessage(m3);
        Apexpages.addMessage(m4);
    }

}