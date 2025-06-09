package programs;
public class DefaultConstructor2 {
    String language;
    String name;
    int year;
    DefaultConstructor(String name , int year ,String lang){
        this.name=name;
        this.year=year;
        this.language=lang;
    }
    DefaultConstructor(DefaultConstructor copy){
        this.name=copy.name;
        this.year=copy.year;
        this.language=copy.language;
    }
    void Display(){
    System.out.println("userdefine Constructor"+" " +name+" "+ year);
}
public static void main(String[] args) {
     System.out.println("original constructor");
     DefaultConstructor ref=new DefaultConstructor("java",1995,"Programming");
     ref.Display();
     System.out.println("copy constructor constructor");
     DefaultConstructor ref2=new DefaultConstructor(ref);
}
}