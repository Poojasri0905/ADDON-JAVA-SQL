package Program;
import java.util.HashMap;
public class StudentMarks{
    public static void main(String[] args){
        HashMap<String,Integer>StudentMarks=new HashMap<>();
        StudentMarks.put("Pooja",100);
        StudentMarks.put("Koushi",75);
        StudentMarks.put("meena",80);
        int totalMarks=0;
        for(int marks:StudentMarks.values()){
            totalMarks +=marks;}
            System.out.println("Total Marks: " + totalMarks);
    }
}