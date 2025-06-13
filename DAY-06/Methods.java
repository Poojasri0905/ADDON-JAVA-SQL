public class Methods extends Thread{
    public void run() {
    	for(int i=1;i<=10;i++) {
    	System.out.println("Hai thread"+" "+i);
	}
    }
}
class Execute{

	public static void main(String[] args) {
		Methods m=new Methods();
		m.run();
	//	m.start();
	}
}