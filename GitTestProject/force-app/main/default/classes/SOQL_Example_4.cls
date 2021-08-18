public class SOQL_Example_4 {
    public String searchText	{set;get;}
    public List<Account> accList 	{set;get;}
    public SOQL_Example_4()
    {
        searchText = '';
    }
    public void search(){
        String query = 'Select ID, Name, Phone, Industry from Account Where Name like ';
        query = query + '\'%'+searchText+'%\'';
        accList = Database.query(query);
    }
}