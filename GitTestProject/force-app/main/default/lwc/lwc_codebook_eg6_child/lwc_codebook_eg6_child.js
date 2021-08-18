import { LightningElement } from 'lwc';

export default class Lwc_codebook_eg6_child extends LightningElement {

    name;
    age;
    phone;
    city;

    empname(event){
        this.name = event.target.value;
    }
    empage(event){
        this.age = event.target.value;
    }
    empphone(event){
        this.phone = event.target.value;
    }
    empcity(event){
        this.city = event.target.value;
    }
    submit(event){
        this.dispatchEvent(new CustomEvent('notifyme', {detail:{ename:this.name,eage:this.age,ephone:this.phone,ecity:this.city}, bubbles:true, composed:true}));
    }
}