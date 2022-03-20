public class outboundexample_4  {
    public outboundexample_4(){
        Document d=[select id,name,body from Document where name='maintainance engineer' ];
        Messaging.EmailFileAttachment at=new Messaging.EmailFileAttachment();
        at.setFileName(d.name+'.txt');
        at.setbody(d.body);
        PageReference p=Page.agreegate;
        Blob body=p.getContentAsPDF();
     Messaging.EmailFileAttachment at1=new Messaging.EmailFileAttachment();
        at1.setFilename('agreegate example');
        at1.setbody(body);
        Messaging.EmailFileAttachment[]files=new Messaging.EmailFileAttachment[]{at,at1};
         Messaging.SingleEmailMessage op=new Messaging.SingleEmailMessage();
                     list<string>toadd=new list<string>{'kanakaranga339@gmail.com'};
                      op.setToAddresses(toadd);
                        op.setSubject('Testing');
        op.setSenderDisplayName('tdjdfjd');
        op.setPlainTextBody('this is a plain text wth attachements');
       op.setFileAttachments(files);
         Messaging.Email[] emails =new Messaging.Email[]{op};
        Messaging.sendEmail(emails);
    }
        
    }


/*
 * public class Outbound_Example_4 {
    public Outbound_Example_4(){
        // Fetch the document 
        Document d=[select id,Name,body from Document where name='Test'];
        // Convert the document as EmailAttachement
        Messaging.EmailFileAttachment at1 =new Messaging.EmailFileAttachment();
        at1.setFileName(d.Name+'.txt');
        at1.setBody(d.body);
        
        //1. Fetch the VF page
        PageReference p=Page.OOPS_Introduction;
        //2. Convert the body of the VF page pdf
        Blob body=p.getContentAsPDF();
        
        // Create a EmailFileAttachment from VF Body
        Messaging.EmailFileAttachment at2 =new Messaging.EmailFileAttachment();
        at2.setFileName('Invoicepage.pdf');
        at2.setBody(body);
        
        // Put all the attachments in a array
        Messaging.EmailFileAttachment[] files =new Messaging.EmailFileAttachment[]{at1,at2};
        // Create a Single Email Program
        Messaging.SingleEmailMessage msg =new Messaging.SingleEmailMessage();
        List<String> toadd=new List<String>{'javasfdc@gmail.com'};
        msg.setToAddresses(toadd);
        msg.setSubject('Testing');
        msg.setPlainTextBody('This is testing with attachment');
        // Attachments created in line no 21 are added to message
        msg.setFileAttachments(files);
        Messaging.Email[] emails =new Messaging.Email[]{msg};
        Messaging.sendEmail(emails);
    }
}*/