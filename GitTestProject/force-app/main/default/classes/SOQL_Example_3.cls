public class SOQL_Example_3 {
    public List<SelectOption> fields	{set;get;}
    public List<String> selected		{set;get;}
    public String query					{set;get;}
    public List<Account> alist			{set;get;}
    public ID idVal						{set;get;}
  
    public SOQL_Example_3(){
        fields = new List<SelectOption>();
        selected = new List<String>();
       
        
        	List<String> fieldNames = new List<String>{'Name','Phone','Industry','Rating','Ownership'};
        
                for(String s : fieldNames){
                    SelectOption so = new SelectOption(s,s);
                    fields.add(so);
                }
        query = 'Select id';
    }
    public void create(){
        for(String s : selected){
            query = query +','+ s ;
        }
        query = query + ' from Account';
    }
    public void submit(){
       
       alist = Database.query(query);
        for(Account a : alist){
          idVal = a.Id;  
        }
        
    }
}