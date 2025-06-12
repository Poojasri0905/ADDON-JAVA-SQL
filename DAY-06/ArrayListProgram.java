package Program;
import java.util.ArrayList;
class ArrayListProgram{
    public static void main(String[] args){
        ArrayList<Object> arr=new ArrayList<Object>();
        arr.add("Poojasri");
        arr.add("A section");
        arr.add("ComputerScience");
        arr.add("3 Year");
        for(Object data:arr){
            System.out.println(data);
        }
    }
}