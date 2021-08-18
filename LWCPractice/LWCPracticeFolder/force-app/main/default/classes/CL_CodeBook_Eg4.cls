public with sharing class CL_CodeBook_Eg4 {
    
    @AuraEnabled(Cacheable=true)
    public static List<Contact> getContactInfo(){
        return [Select Id,FirstName,LastName,Phone,Email from Contact Limit 10];
    }
}
