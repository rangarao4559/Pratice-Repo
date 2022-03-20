public class myyy
{
    public Contact record { get; set; }
    public myyy(ApexPages.StandardController controller)
    {
        // call controller.addFields for any data you need
        // if it is not used anywhere in your markup
        record = (Contact)controller.getRecord();
    }
}