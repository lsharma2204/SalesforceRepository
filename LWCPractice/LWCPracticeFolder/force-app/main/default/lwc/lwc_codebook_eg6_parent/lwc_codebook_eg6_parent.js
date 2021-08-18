import { LightningElement } from 'lwc';

export default class Lwc_codebook_eg6_parent extends LightningElement {

    FirstName;
    Age;
    Phone;
    City;

    constructor(){

        super();
        this.addEventListener('notifyme',this.show);
    }
        
    

    show(event){
        this.FirstName = event.detail.ename;
        this.Age = event.detail.eage;
        this.Phone = event.detail.ephone;
        this.City = event.detail.ecity;
    }
}