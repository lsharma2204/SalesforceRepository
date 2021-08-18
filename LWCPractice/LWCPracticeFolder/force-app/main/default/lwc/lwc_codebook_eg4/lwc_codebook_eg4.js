import { LightningElement,wire } from 'lwc';
import getContactInfo from '@salesforce/apex/CL_CodeBook_Eg4.getContactInfo'

export default class Lwc_codebook_eg4 extends LightningElement {

    @wire(getContactInfo) lakshaya;
}