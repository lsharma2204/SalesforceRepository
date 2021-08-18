public class ContactInsert {
    public Contact c		{set;get;}
    public ContactInsert(){
        c = new Contact();
    }
    public void saveMe(){
        Integer count = [Select count() from contact];
        if(count>=30){
            Apexpages.addMessage(new Apexpages.Message(Apexpages.Severity.ERROR,'No new contact can be inserted!'));
        }else{
            insert c;
        }
    }
}