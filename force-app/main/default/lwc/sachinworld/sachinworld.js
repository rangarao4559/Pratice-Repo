import { LightningElement, track } from 'lwc';

export default class Sachinworld extends LightningElement {
    @track greeting='World';
    contacts=[
        {
            Id:'15334355353',
            Name:'ranga',
            Title:'crm consultant'
        },
        {
            Id:'1533435566353',
            Name:'ramu',
            Title:'crm devko'
        },
        {
            Id:'15334445353',
            Name:'rajesh',
            Title:'crm hjkl'
        }

    ]
    changahandler(event){
        this.greeting=event.target.value;
    }
}