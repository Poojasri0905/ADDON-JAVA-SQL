import java.util.ArrayList;
import java.util.Iterator;

public class StudentList {
    public static void main(String[] args) {
        
        ArrayList<String> students = new ArrayList<>();
        students.add("Poojasri");
        students.add("Abinaya");
        students.add("Koushi");
        students.add("Asha");
        students.add("Yarshini");
        
       
        Iterator<String> iterator = students.iterator();

        
        System.out.println("Student Names:");
        while (iterator.hasNext()) {
            System.out.println(iterator.next());
        }
    }
}