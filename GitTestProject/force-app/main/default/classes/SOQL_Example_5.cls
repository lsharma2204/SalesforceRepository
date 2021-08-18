public class SOQL_Example_5 {
    public String accName		{set;get;}
    public String accRating		{set;get;}
    public List<Account> accList	{set;get;}
    public SOQL_Example_5(){
        accName = '';
        accRating = '';
    }
    public void searchAccount(){
        if(accName != '' && accRating != ''){
         	 String query = 'Select Id, Name, Phone, Industry, Rating from Account where Name =\''+accName+'\' and Rating = \''+accRating+'\'';
            accList = Database.query(query);
        }
     	  
    }
}