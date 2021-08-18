import { LightningElement } from 'lwc';

export default class Lwc_codebook_eg2 extends LightningElement {

    num;
    resvalue;
    call(event){
        this.num = event.target.value;
    }
    show(event){
        let sum = 0;
        let N = parseInt(this.num);
        for(let i=1; i<=N;i++){
            sum = sum + i;
        }
        this.resvalue = sum;
    }

}