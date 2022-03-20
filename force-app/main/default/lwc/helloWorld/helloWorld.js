import { LightningElement} from 'lwc';
import NAME_Field  from '@salesforce/schema/Account.Name';
import sObjectName from '@salesforce/schema/Account';
export default class HelloWorld extends LightningElement {
    greeting='World';
  name=NAME_Field;
obj=sObjectName;

    contacts=[
{
name:'ranga',
id:'124'

},
{
name:'rangarao',
id:'12456'

},

    ];
    changahandler(event){
        this.greeting=event.target.value;
    }
}