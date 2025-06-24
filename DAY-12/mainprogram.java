import java.sql.*;
import java.util.Scanner;
class Student {
    int rollNo;
    String name;
    String email;
    String phone;
    String dept;
    String course;
    public Student(int rollNo, String name, String email, String phone, String dept, String course) {
        this.rollNo = rollNo;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.dept = dept;
        this.course = course;
    }
}


class StudentDBManager {
    String url = "jdbc:mysql://localhost:3306/jdbc";
    String user = "root";
    String password = "Pooja@kg";
    public void insertStudent(Student s) throws Exception {
        String query = "INSERT INTO Students (studrollno, studname, studemail, studphno, studdept, course) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, s.rollNo);
            stmt.setString(2, s.name);
            stmt.setString(3, s.email);
            stmt.setString(4, s.phone);
            stmt.setString(5, s.dept);
            stmt.setString(6, s.course);
            stmt.executeUpdate();
            System.out.println("Student inserted successfully.");
        }
    }
    public void displayStudents() throws Exception {
        String query = "SELECT * FROM Students";
        try (Connection conn = DriverManager.getConnection(url, user, password);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {
            System.out.println("\n--- Student Records ---");
            while (rs.next()) {
                System.out.println("RollNo: " + rs.getInt("studrollno") +
                        ", Name: " + rs.getString("studname") +
                        ", Email: " + rs.getString("studemail") +
                        ", Phone: " + rs.getString("studphno") +
                        ", Dept: " + rs.getString("studdept") +
                        ", Course: " + rs.getString("course"));
            }
        }
    }
       public void updateStudent(Student s) throws Exception {
        String query = "UPDATE Students SET studname=?, studemail=?, studphno=?, studdept=?, course=? WHERE studrollno=?";
        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, s.name);
            stmt.setString(2, s.email);
            stmt.setString(3, s.phone);
            stmt.setString(4, s.dept);
            stmt.setString(5, s.course);
            stmt.setInt(6, s.rollNo);
            int rows = stmt.executeUpdate();
            System.out.println(rows > 0 ? "Student updated." : "Student not found.");
        }
    }
    public void deleteStudent(int rollNo) throws Exception {
     String query = "DELETE FROM Students WHERE studrollno=?";
        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setInt(1, rollNo);
            int rows = stmt.executeUpdate();
            System.out.println(rows > 0 ? "Student deleted." : "Student not found.");
        }
    }
}
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        StudentDBManager manager = new StudentDBManager();
        while (true) {
            System.out.println("\n=== Student DB Manager ===");
            System.out.println("1. Insert Student");
            System.out.println("2. Display Students");
            System.out.println("3. Update Student");
            System.out.println("4. Delete Student");
            System.out.println("5. Exit");
            System.out.print("Enter choice: ");
            int choice = sc.nextInt();
            sc.nextLine();
            try {
                switch (choice) {
                   case 1:
                        System.out.print("Roll No: ");
                        int r = sc.nextInt(); sc.nextLine();
                        System.out.print("Name: ");
                        String n = sc.nextLine();
                        System.out.print("Email: ");
                        String e = sc.nextLine();
                        System.out.print("Phone: ");
                        String p = sc.nextLine();
                        System.out.print("Dept: ");
                        String d = sc.nextLine();
                        System.out.print("Course: ");
                        String c = sc.nextLine();
                        Student s = new Student(r, n, e, p, d, c);
                        manager.insertStudent(s);
                        break;
                    case 2:
                        manager.displayStudents();
                        break;
                    case 3:
                        System.out.print("Roll No to update: ");
                        int ur = sc.nextInt(); sc.nextLine();
                        System.out.print("New Name: ");
                        String un = sc.nextLine();
                        System.out.print("New Email: ");
                        String ue = sc.nextLine();
                        System.out.print("New Phone: ");
                        String up = sc.nextLine();
                        System.out.print("New Dept: ");
                        String ud = sc.nextLine();
                        System.out.print("New Course: ");
                        String uc = sc.nextLine();
                        Student us = new Student(ur, un, ue, up, ud, uc);
                        manager.updateStudent(us);
                        break;
                    case 4:
                        System.out.print("Roll No to delete: ");
                        int dr = sc.nextInt();
                        manager.deleteStudent(dr);
                        break;
                    case 5:
                        System.out.println("Exiting. Goodbye!");
                        return;
                    default:
                        System.out.println("Invalid choice.");
                }

            } catch (Exception ex) {
                System.out.println("Error: " + ex.getMessage());
                ex.printStackTrace();
            }
        }
    }
}
