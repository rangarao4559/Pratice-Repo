public class Schedule_Callout_Example implements schedulable {
    public string apikey;
    public Schedule_Callout_Example(string apikey){
        this.apikey=apikey;
        
    }
    public void execute(schedulablecontext sc){
        future_schedule_call_Example.show(apikey);
        
    }

}