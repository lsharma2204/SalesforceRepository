@RestResource(urlMapping='/v1/Account/*')
global with sharing class AccountManager{
    
    @httpGet
    global static AccountWrapper getAccountDetails(){
            RestRequest req = RestContext.request;
            String requestURI = req.requestURI;
            String accId = requestURI.subStringAfterLast('/');
            
            
            Account acc = [Select Id,Name,Rating,Industry,Description,Phone,Fax from Account where Id = :accId];
            List<Contact> contactList = [Select Name, LastName, FirstName,Email,Phone from Contact where AccountId = :accId];
            List<Case> caseList = [Select Id,CaseNumber,Subject,Description,Status,Owner.Name from Case where AccountId= :accId];
            
            AccountWrapper wrap = new AccountWrapper();
            if(acc != null){
                wrap.acc = acc;
                wrap.contactList = contactList;
                wrap.caseList = caseList;
            }else{
                wrap.acc = null;
                wrap.contactList = null;
                wrap.caseList = null;
            }
            return wrap;
            
        }
        global class AccountWrapper{
               global Account acc;
               global List<Contact> contactList;
               global List<Case> caseList;
        }
       }