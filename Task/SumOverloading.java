public class SumOverloading{

    public void sum(int a, int b) {
        System.out.println("sum(int, int)");
        System.out.println("Sum (int): " + (a + b));
    }

    public void sum(double a, double b) {
        System.out.println("sum(double, double)");
        System.out.println("Sum (double): " + (a + b));
    }

    public static void main(String[] args) {
        SumOverloading obj = new SumOverloading();

        obj.sum(10, 20);         
        obj.sum(5.5, 3.3);       
    }
}