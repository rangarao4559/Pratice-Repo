public class Xml_example {
    public string result{set;get;}
    public Xml_example(){
        dom.Document doc=new dom.Document();
        dom.XmlNode root=doc.createrootelement('student',null,null);
        dom.XmlNode name=root.addchildelement('Name',null,null);
        dom.XmlNode fname=name.addchildelement('FirstName',null,null);
        fname.addTextNode('satish');
        dom.XmlNode lname=name.addchildelement('lastname',null,null);
        lname.addTextNode('myla');
        dom.XmlNode age=root.addchildelement('age',null,null);
        age.addTextNode('30');
        dom.XmlNode city=root.addchildelement('Address',Null,null);
        city.setAttribute('city', 'Hyd');
         city.setAttribute('state', 'tg');
            city.setAttribute('pin', '451');
        city.addCommentNode('this is current address');
        result=doc.toXmlString();
        
    }

}