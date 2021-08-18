public class TestClass {
    public List<Account> acc	{set;get;}
    public void create(){
        String query = 'Select id, name from Account';
        acc = Database.query(query);
    }
}