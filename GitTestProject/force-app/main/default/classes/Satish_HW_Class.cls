public class Satish_HW_Class {
    public Account ac	{set;get;}
    public List<Account> accs	{set;get;}
    public Satish_HW_Class(){
        accs = new List<Account>();
    }
    public void addMe(){
        ac = new Account();
        accs.add(ac);
    }
}