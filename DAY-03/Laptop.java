public class Laptop {
    private String modelName;
    private int ramSize;

    public Laptop(String modelName, int ramSize) {
        this.modelName = modelName;
        this.ramSize = ramSize;
    }

    public void display() {
        System.out.println("Laptop Model: " + modelName);
        System.out.println("RAM Size: " + ramSize + " GB");
    }

    public static void main(String[] args) {
        
        Laptop laptop1 = new Laptop("Lenovo ThinkPad X1", 16);

        laptop1.display();
    }
}