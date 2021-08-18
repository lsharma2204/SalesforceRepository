public class Sobject_Opportunity_Example {
    public Opportunity opp {set;get;}
    public Sobject_Opportunity_Example(){
        opp = new Opportunity();
    }
    public PageReference create(){
        PageReference p;
        try{
            insert opp;
            p = new PageReference('/006');
        }catch(Exception e){
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.ERROR,e.getMessage());
            ApexPages.addMessage(msg);
        }
        
        return p;
    }
    public void clear(){
        opp = null;
    }
}