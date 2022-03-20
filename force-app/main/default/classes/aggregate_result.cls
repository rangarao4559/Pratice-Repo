public class aggregate_result {
    public Account acc {set;get;}
    public string fldname {set;get;} 
    public String result {set;get;}
    public aggregate_result(){
        acc=new Account();
        acc.Name='ravi';
        acc.Industry='energy';
        acc.Rating='hot';
        acc.Phone='2222';
        acc.annualRevenue=5000;
    }
    
    public void search(){
        result=(string)acc.get(fldName);
    }

}