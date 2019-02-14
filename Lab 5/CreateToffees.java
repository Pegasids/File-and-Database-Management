// Note: Java has the auto commit feature. Thus, all changes made are final and can be seen in the DB instantly.
// javac CreateToffees.java
// java CreateToffees
 
 
import java.util.*;
import java.sql.*; // Java package for accessing Oracle
import java.io.*; // Java package includes Console for getting password from user and printing to screen
 
 
public class CreateToffees {
 
public static void main(String args[]) {
 
    // get username
    System.out.print("Username: ");
    Console co = System.console();
    String m_userName = co.readLine();
    
    // obtain password
    char[] passwordArray = co.readPassword("Password: ");
    String m_password = new String(passwordArray);
 
    // The URL we are connecting to
    	String m_url = "jdbc:oracle:thin:@gwynne.cs.ualberta.ca:1521:CRS";
 
    // The driver to use for connection
    	String m_driverName = "oracle.jdbc.driver.OracleDriver";
 
    	Connection m_con;
    	String createString;
 
    // SQL statement to execute
    	createString = "create table TOFFEES " +
   	  "(T_NAME VARCHAR(32), " +
             	"SUP_ID INTEGER, " +
             	"PRICE FLOAT, " +
             	"SALES INTEGER, " +
             	"TOTAL INTEGER)";
 
    // create a statement object
    	Statement stmt;
 
   	try
   	{
      	Class drvClass = Class.forName(m_driverName);  
          	// DriverManager.registerDriver((Driver)drvClass.newInstance());- not needed.  
          	// This is automatically done by Class.forName().
      	 
 
   	} catch(Exception e)
   	{
 
          	System.err.print("ClassNotFoundException: ");
          	System.err.println(e.getMessage());
 
   	}
 
   	try
   	{
      	// Establish a connection
 
          	m_con = DriverManager.getConnection(m_url, m_userName,
          	m_password);
    
    
          	stmt = m_con.createStatement();
      	// Since it is a DML command, use executeUpdate. Automatically converts our string to an SQL command.
          	stmt.executeUpdate(createString);
 
      	// insert a row
      	createString = "insert into toffees values ('Quadbury', 101,7.99,0,0)";
   	 stmt.executeUpdate(createString);   	 
   	 
      	 
      	// Suppose executing a query and printing the results
      	String query = "select * from toffees";
      	ResultSet rs = stmt.executeQuery(query);
      	while (rs.next())
   	   	{
 			 String s = rs.getString("T_NAME");
   	 int supid = rs.getInt("SUP_ID");
   	 int sales = rs.getInt("SALES");
 			 float n = rs.getFloat("PRICE");
   	 int total = rs.getInt("TOTAL");
 			 System.out.println(s + "," + supid+"," +sales+"," +n+"," +total);
   	 }
 
 
 
      	// Printing the results in result set
      	// No more statements to compile/execute. So, close connection.
          	stmt.close();
          	m_con.close();
 
      	System.out.println("Successful!");
 
   	} catch(SQLException ex) {
 
          	System.err.println("SQLException: " +
          	ex.getMessage());
 
   	}
 
}
}

