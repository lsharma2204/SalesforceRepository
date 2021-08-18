import { LightningElement } from 'lwc';

export default class Lwc_codebook_eg3 extends LightningElement {

    first;
    second;
    third;
    res;
    fnum(event){
        const nm = event.target.name;
        if(nm == "one"){
            this.first = parseInt(event.target.value);
        }else if(nm == "two"){
            this.second = parseInt(event.target.value);
        }else{
            this.third = parseInt(event.target.value);
        }
    }
    calculate(event){

        if(this.first>this.second && this.first>this.third){
            this.res = this.first;
        }else if(this.second>this.third && this.second>this.first){
            this.res = this.second;
        }else{
            this.res = this.third;
        }
    }
}