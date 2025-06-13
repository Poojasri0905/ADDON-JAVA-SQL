import java.util.ArrayList;
class ArrayListClass {
    public static void main(String[] args) {
        ArrayList<Integer> arr=new ArrayList();
        ArrayList<Object> arr2=new ArrayList();
        arr.add(10);
        arr.add(20);
        arr.add(30);
        arr.add(40);
        arr.add(50);
        arr.forEach(num->System.out.println(num*num));
        arr.forEach(age->{
            if(age>=18) {
                 System.out.println("Allowed");
            }
            else {
                 System.out.println("Not Allowed");
            }
        });
        arr2.add("Hello Java");
        System.out.println(arr);
        System.out.println(arr2);
    }
}