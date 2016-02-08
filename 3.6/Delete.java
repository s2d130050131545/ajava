//STEP 1. Import required packages
import java.sql.*;
import java.util.Scanner;

public class Delete {
   // JDBC driver name and database URL
public void delete()
{
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
      System.out.println("Please enter the account no which you want to delete:");
      stmt = conn.createStatement();
      Scanner sc=new Scanner(System.in);
      int acc_no = sc.nextInt();
	String sql = "delete from account where Acc_no = "+acc_no+""; 

      stmt.executeUpdate(sql);
      System.out.println("Data has been deleted.");
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