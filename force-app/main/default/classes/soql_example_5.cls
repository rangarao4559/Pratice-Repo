public class soql_example_5 {
    public Integer ranga 			{set;get;}
    public List<Account> accounts	{set;get;}
    public SOQL_Example_5(){
        accounts =[select id,Name,Phone,Industry from Account ];
    }
    public void fetchData(){
        accounts =[select id ,Name,Phone,Industry from Account limit :ranga];
    }


}