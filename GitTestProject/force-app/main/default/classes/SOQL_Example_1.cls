public with sharing class SOQL_Example_1 {
    public List<Account> acc	{set;get;}
    public SOQL_Example_1(){
        acc = [Select Name, Phone, Industry from Account limit 10];
    }
    public void create(){
        Account acc = new Account(Name = 'DML Example', Industry='IT');
        insert acc;
    }
}