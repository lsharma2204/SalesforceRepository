import { LightningElement,api } from 'lwc';
import pubsub from 'c/pubsub'
import {createRecord} from 'lightning/uiRecordApi'

export default class Pubsub_codebook_publisher extends LightningElement {

    firstname;
    lastname;
    phone;
    email;
    @api idval;
    fname(event){
        this.firstname = event.target.value;
    }
    lname(event){
        this.lastname = event.target.value;
    }
    phn(event){
        this.phone = event.target.value;
    }
    eml(event){
        this.email = event.target.value;
    }

    submitme(event){

        const fields = {'FirstName':this.firstname,'LastName':this.lastname,'Phone':this.phone,'Email':this.email};

        const recordData = {apiName:'Contact',fields};

        createRecord(recordData).then(response => {
                alert('Contact Created Successfully'+response.id);
                this.idval = response.id
                pubsub.fire('notifyme',this.idval);
        }).catch(error=>{console.log('Contact creation Failed'+error);});
    }

}