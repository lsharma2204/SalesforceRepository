public class ListExample2 {
    public List<Account_Details> accD 		{set;get;}
    public ListExample2(){
        accD = new List<Account_Details>();
        List<Account> ac = [Select Name,Phone,Industry from Account Limit 10];
        
        for (Account a : ac){
            Account_Details a1 = new Account_Details();
            a1.name = a.Name;
            a1.phone = a.Phone;
            a1.industry = a.industry;
            a1.flag = false;
            if(a.industry == 'Energy'){
                a1.amount = 30000;
            }
            else{
                a1.amount = 20000;
            }
            accD.add(a1);
        }
    }
}