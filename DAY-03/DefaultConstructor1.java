package programs;

public class DefaultConstructor1 {
    String language;
    String name;
    int year;
    DefaultConstructor1(String name , int year ,String lang){
        this.name=name;
        this.year=year;
        this.language=lang;
    System.out.println("userdefine Constructor"+" " +name+" "+ year);
}
public static void main(String[] args) {
     //to create object
     //classname reference variable=new classname();
     DefaultConstructor1 ref=new DefaultConstructor1("java",1995,"Programming");
}
}