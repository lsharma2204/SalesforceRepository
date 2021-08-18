public class ListExample1 {
    
   public List<Student> stList 	{set;get;}
    
    public ListExample1(){
        
        stList = new List<Student>();
        
       Student s1 = new Student();
        stList.add(s1);
    }
    public void addMe(){
        Student st = new Student();
        this.stList.add(st);
    }
}