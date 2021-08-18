import { LightningElement,wire,track } from 'lwc';
import fetchResult from '@salesforce/apex/TestRichApex.fetchResult';

export default class Lwc_community_test extends LightningElement {

    
    @wire(fetchResult) contacts;

}