import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author elmorsy
 */
public class sampleJava {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IllegalAccessException, SQLException, ClassNotFoundException, InstantiationException {
String mdriverName = "oracle.jdbc.driver.OracleDriver";
String m_url=  "jdbc:oracle:thin:@gwynne.cs.ualberta.ca:1521:CRS";
String m_username=  "canopus";
String m_password=  "Mk02199400";
Connection con= null;
Class drvClass = null;

// Connection establishment
drvClass = Class.forName(mdriverName);
DriverManager.registerDriver((Driver)drvClass.newInstance());
con = DriverManager.getConnection(m_url, m_username, m_password);

// Trying the code
Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
String statement = "select mname, mnum from movie";
ResultSet rs = stmt.executeQuery(statement);

// updating the first row
//rs.first();
//rs.updateInt("mnum",100);
//rs.updateRow();

// insert a row
//rs.moveToInsertRow();
//rs.updateInt("mnum",200);
//rs.updateString("mname","Khan");
//rs.insertRow();

// delete the second row
//rs.absolute(2);
//rs.deleteRow();

// show table contents
//rs.first();
//do{
//System.out.println(rs.getString("mname")+","+rs.getInt("mnum"));
//}while(rs.next());

// Using metadata to print table contents
rs.first();
ResultSetMetaData rsm = rs.getMetaData();
int c = rsm.getColumnCount();
System.out.print("Number of colomns: ");
System.out.println(c);
do{
System.out.print("(");
for(int i = 1; i <= c; i++)
{
String v ="A";
if (rs.getObject(i) == null)
v = "null";
else
v = rs.getObject(i).toString();
System.out.print(v);
System.out.print(",");
}
System.out.println(")");
}while(rs.next());

}}
