package challenges1;

import java.util.Scanner;

class Student {
    String name;
    int mark1, mark2, mark3;

    
    Student(String name, int mark1, int mark2, int mark3) {
        this.name = name;
        this.mark1 = mark1;
        this.mark2 = mark2;
        this.mark3 = mark3;
    }

    int getTotalMarks() {
        return mark1 + mark2 + mark3;
    }

    double getAverageMarks() {
        return getTotalMarks() / 3.0;
    }

    String getGrade() {
        double avg = getAverageMarks();
        if (avg >= 35) {
        	return "pass";
        }
        else {
        	return "Fail";
        }
    }

    void displayDetails() {
        System.out.println("--- Student Details ---");
        System.out.println("Name: " + name);
        System.out.println("Subject 1: " + mark1);
        System.out.println("Subject 2: " + mark2);
        System.out.println("Subject 3: " + mark3);
        System.out.println("Total Marks: " + getTotalMarks());
        System.out.println("Average Marks: " + getAverageMarks());
        System.out.println("Grade: " + getGrade());
    }
}

public class StudentName {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);

            System.out.println("--- Enter Details for Student ---");

            System.out.print("Enter Student Name: ");
            String name = in.nextLine();

            System.out.print("Enter marks for Subject 1: ");
            int mark1 = in.nextInt();

            System.out.print("Enter marks for Subject 2: ");
            int mark2 = in.nextInt();

            System.out.print("Enter marks for Subject 3: ");
            int mark3 = in.nextInt();


            Student s = new Student(name, mark1, mark2, mark3);
            s.displayDetails();
            
            in.close();
    	}

    }