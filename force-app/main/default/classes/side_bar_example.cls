public class side_bar_example {
    public list<lead>leads {set;get;}
    public integer count {set;get;}
    public side_bar_example(){
        leads=[select id,firstname from lead];
        count=leads.size();
    }

}