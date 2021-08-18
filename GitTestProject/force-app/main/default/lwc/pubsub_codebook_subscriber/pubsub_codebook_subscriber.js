import { LightningElement,api } from 'lwc';
import pubsub from 'c/pubsub'
export default class Pubsub_codebook_subscriber extends LightningElement {

    @api recordId;
    connectedCallback()
    {
        this.Lakshaya();
    }
    Lakshaya(){
        pubsub.register('notifyme',this.handleevent.bind(this));
    }
    handleevent(msg){
        
        alert(msg);
        alert(typeof msg);
        this.recordId = msg;
    }
}