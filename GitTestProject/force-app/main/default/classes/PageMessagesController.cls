public class PageMessagesController {
    
    public PageMessagesController(){
       	ApexPages.Message msg1 = new ApexPages.Message(ApexPages.Severity.CONFIRM,'SUCCESSFUL');
        ApexPages.addMessage(msg1);
    }
}