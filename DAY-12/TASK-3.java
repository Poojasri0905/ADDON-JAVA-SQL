package Mysqlprograms;
import java.sql.*;
public class Task3 {
public static void main(String[] args) throws Exception {
		String url = "jdbc:mysql://localhost:3306/jdbc";
		String user = "root";
		String password = "ksql@";
		int rollNo = 103723;
		String name = "poojasri";
		String email = "2326ka01@kgcas.com";
		String phone = "1234567891";
		String dept = "CT";
		String course = "Computer Technology";
    String selectQuery = "Select* from students";
		Connection conn = DriverManager.getConnection(url, user, password);
    PreparedStatement stmt = conn.prepareStatement(selectQuery);
		Statement selectStmt = conn.createStatement();
   	ResultSet rs = selectStmt.executeQuery(selectQuery);
		System.out.println("\n--- Student Table Data ---");
     while (rs.next()) {
     int rno = rs.getInt("studrollno");
		  String sname = rs.getString("studname"); 
			String semail = rs.getString("studemail");
			String sphone = rs.getString("studphno");
			String sdept = rs.getString("studdept");
			String scourse = rs.getString("course");
			System.out.println("Roll No: " + rno + ", Name: " + sname + ", Email: " + semail + ", Phone: " + sphone
					+ ", Dept: " + sdept + ", Course: " + scourse);
		}
		rs.close();
		selectStmt.close();
		stmt.close();
		conn.close();

	}

}
