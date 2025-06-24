package Mysqlprograms;
import java.sql.*;
public class Task2 {
	public static void main(String[] args) throws Exception {
		String url = "jdbc:mysql://localhost:3306/jdbc";
		String user = "root";
		String password = "ksql@";
		int rollNo = 103723;
		String name = "Poojasri";
		String email = "2326ka33@kgcas.com";
		String phone = "1234567891";
		String dept = "CT";
		String course = "Computer Technology";
		String query1 = "INSERT INTO Students (studrollno, studname, studemail, studphno, studdept, course) VALUES (?, ?, ?, ?, ?, ?)";
		Connection conn = DriverManager.getConnection(url, user, password);
		PreparedStatement stmt = conn.prepareStatement(query1);
		stmt.setInt(1, rollNo);
		stmt.setString(2, name);
		stmt.setString(3, email);
		stmt.setString(4, phone);
		stmt.setString(5, dept);
		stmt.setString(6, course);
		stmt.executeUpdate();
		System.out.println("Student data inserted successfully.");
		stmt.close();
		conn.close();
	}
}
