public class List_Example_1 {
    public List<Student> students {set;get;}
    public List_Example_1(){
        students = new List<Student>();
        addMe();
    }
    public void addMe(){
      	Student st1 = new Student();
        
        students.add(st1);
    }
    public void clearMe(){
        Integer size = Students.size();
        Students.remove(size-1);
    }
}