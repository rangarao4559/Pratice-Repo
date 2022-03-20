public class xml_example_1 {
    public string xmlstring{set;get;}
    public string result{set;get;}
    public void convert(){
        dom.Document doc=new dom.Document();
        doc.load(xmlstring);
        dom.XmlNode root=doc.getrootelement();
        result=result+root.getName();
        list<dom.XmlNode>childs=root.getchildelements();
        if(childs.size()>0){
            for(dom.XmlNode c:childs){
                result=result+'\n'+c.getName()+':'+c.getText();
            }
        }
    }
}