public class MultiTh extends Thread {
    private String Name;
    MultiTh(String Name) {
        this.Name=Name;
    }
    public void run() {
        for(int i=1;i<=5;i++) {
            System.out.println(Name);
            try{
                Thread.sleep(500);
            }
            catch(InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
    class Execute{
    public static void main(String[] args) {
         System.out.println("Thread-1");
        System.out.println("Thread-2");
    }
    }
}