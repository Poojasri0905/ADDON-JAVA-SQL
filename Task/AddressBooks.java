import java.util.Scanner;
class AddressBooks
 {
        public static void main(string args()){
        Scanner sc = new Scanner(System.in);
        final int MAX = 5; // Max 5 entries
        String[] names = new String[MAX];
        String[] phones = new String[MAX];
        String[] emails = new String[MAX];

        int count = 0;

        while (true) {
            System.out.println("\n--- Mini Address Book ---");
            System.out.println("1. Add Contact");
            System.out.println("2. View Contacts");
            System.out.println("3. Exit");
            System.out.print("Choose an option: ");
            int choice = sc.nextInt();
            sc.nextLine(); // consume newline

            if (choice == 1) {
                if (count >= MAX) {
                    System.out.println("Address book is full!");
                    continue;
                }
                System.out.print("Enter name: ");
                names[count] = sc.nextLine();
                System.out.print("Enter phone: ");
                phones[count] = sc.nextLine();
                System.out.print("Enter email: ");
                emails[count] = sc.nextLine();
                count++;
            } else if (choice == 2) {
                System.out.println("\nContacts:");
                for (int i = 0; i < count; i++) {
                    System.out.println((i + 1) + ". " + names[i] + " | " + phones[i] + " | " + emails[i]);
                }
            } else if (choice == 3) {
                System.out.println("Exiting Address Book.");
                break;
            } else {
                System.out.println("Invalid option. Try again.");
            }
        }
    }
}