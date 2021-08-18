public class List_Example_2 {
    public List<Account_Details> ad		{set;get;}
    public List_Example_2(){
        ad = new List<Account_Details>();
        List<Account> acc = [Select Name,Phone,Industry from Account];
        for(Account ac : acc){
            Account_Details add = new Account_Details();
            add.name = ac.Name;
            add.phone = ac.Phone;
            add.industry = ac.Industry;
            add.flag = false;
            if(ac.Industry == 'Energy')
                add.amount = 50000;
            else
                add.amount = 30000;
            
            ad.add(add);
        }
    }
}