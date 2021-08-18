import { LightningElement } from 'lwc';
import {createRecord} from 'lightning/uiRecordApi'
export default class Lwc_codebook_eg5_parent extends LightningElement {
    
    FirstName;
    LastName;
    Phone;
    Email;
    recordId;
    display(event){
        this.FirstName = event.detail.fna;
        this.LastName = event.detail.lna;
        this.Phone = event.detail.phn;
        this.Email = event.detail.ema;

        const fields = {'FirstName': this.FirstName, 'LastName': this.LastName, 'Phone': this.Phone, 'Email': this.Email}

        const recordData = {apiName : 'Contact', fields};

        createRecord(recordData).then(response => {
            this.recordId = response.id;
        }).catch(error => {
            alert("Record Creation Failed");
        });
    }


}