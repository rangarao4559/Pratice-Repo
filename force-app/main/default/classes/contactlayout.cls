public class contactlayout {
    public Contact record { get; set; }
public Id posId   {get;set;}

    public contactlayout(ApexPages.StandardController controller)
    {
        // call controller.addFields for any data you need
        // if it is not used anywhere in your markup
        record = (Contact)controller.getRecord();
         posId = controller.getRecord().Id; 
        pagereference p=page.newcontact;
        blob body=p.getContentAsPDF();
        messaging.EmailFileAttachment atc=new messaging.EmailFileAttachment();
        atc.setFileName('myinvoiuce.pdf');
        atc.setBody(body);
        messaging.SingleEmailMessage msg=new messaging.SingleEmailMessage();
        string[] toadd=new string[]{'record.email'};
            msg.setToAddresses(toadd);
        msg.setSubject('testing');
  msg.setFileAttachments(new Messaging.EmailFileAttachment[] {atc});

        messaging.Email[] emails=new messaging.Email[]{msg};
            messaging.sendEmail(emails);
            
        
    }


}