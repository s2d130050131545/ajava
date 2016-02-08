//STEP 1. Import required packages
import java.sql.*;
import java.util.Scanner;

public class Update {
public void update()
{
   // JDBC driver name and database URL
   final String JDBC_DRIVER = "org.postgresql.Driver";  
   final String DB_URL = "jdbc:postgresql://127.0.0.1:5432/s14008";

   //  Database credentials
   final String USER = "postgres";
   final String PASS = "gopiraj";

   Connection conn = null;
   Statement stmt = null;
   try{
      //STEP 2: Register JDBC driver
      Class.forName(JDBC_DRIVER);

      //STEP 3: Open a connection
      System.out.println("Connecting to a selected database...");
      conn = DriverManager.getConnection(DB_URL, USER, PASS);
      System.out.println("Connected database successfully...");
      
      //STEP 4: Execute a query
      System.out.println("Creating table in given database...");
      stmt = conn.createStatement();
      
	  System.out.println("Please select any choice which you want:");
	  System.out.println("1. update name.");
	  System.out.println("2. update amount.");
	  System.out.println("3. update contact no.");
	   Scanner sc=new Scanner(System.in);
	  int ch = sc.nextInt();
	  
	  if(ch == 1)
	  {
		   System.out.println("Please enter account no:");
		   int acc_no = sc.nextInt();
		   System.out.println("Please enter new name:");
		   String name = sc.next();
			String sql = "update account set name = '"+name+"' where acc_no = "+acc_no+"";
			 stmt.executeUpdate(sql);
	  }
	  if(ch == 2)
	  {
		   System.out.println("Please enter account no:");
		   int acc_no = sc.nextInt();
		   System.out.println("Please enter new amount:");
		   String amount = sc.next();
			String sql = "update account set balance = "+amount+" where acc_no = "+acc_no+"";
			 stmt.executeUpdate(sql);
	  }
	  if (ch == 3)
	  {
		   System.out.println("Please enter account no:");
		   int acc_no = sc.nextInt();
		   System.out.println("Please enter new Contact number:");
		   String no = sc.next();
			String sql = "update account set contact_no = "+no+" where acc_no = "+acc_no+"";
			 stmt.executeUpdate(sql);
	  }
	  
 

      //stmt.executeUpdate(sql);
      System.out.println("Data updated successfully.");
   }catch(SQLException se){
      //Handle errors for JDBC
      se.printStackTrace();
   }catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }finally{
      //finally block used to close resources
      try{
         if(stmt!=null)
            conn.close();
      }catch(SQLException se){
      }// do nothing
      try{
         if(conn!=null)
            conn.close();
      }catch(SQLException se){
         se.printStackTrace();
      }//end finally try
   }//end try


}
}//end JDBCExample