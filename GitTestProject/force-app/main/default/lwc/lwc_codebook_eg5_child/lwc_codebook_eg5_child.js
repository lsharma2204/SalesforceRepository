import { LightningElement } from 'lwc';

export default class Lwc_codebook_eg5_child extends LightningElement {

    fn;
    ln;
    ph;
    em;
    fname(event){
        const a = event.target.name;
        if(a == "first"){
            this.fn = event.target.value;
        }else if(a == "second"){
            this.ln = event.target.value;
        }else if(a == "third"){
            this.ph = event.target.value;
        }else{
            this.em = event.target.value;
        }
    }
    subme(event){
        const evt = new CustomEvent('notify',{detail:{fna:this.fn,lna:this.ln,phn:this.ph,ema:this.em}});
        this.dispatchEvent(evt);
    }
}