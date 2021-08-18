public class University {
	public String uniName;
    public String city;
    public Course co;
    public University(String cname,Decimal fee){
        this.uniName = 'MIT';
        this.city = 'Hyd';
        co = new Course();
        co.courseName = cname;
        co.fee = fee;
    }
    
    public class Course{
        public String courseName;
        public Decimal fee;
    }
}