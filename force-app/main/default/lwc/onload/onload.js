import { LightningElement, track } from 'lwc';
export default class Onload extends LightningElement {
@track inputValue;
  // initialize component
    renderedCallback() {
        this.inputValue = 19;
       
    }
  connectedCallback() {
    this.inputValue = 5;
  }
 handleButtonClick() {
  
        this.inputValue = 56;
            console.log("properties "+ this.inputValue);
    }

}