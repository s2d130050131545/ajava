//STEP 1. Import required packages
import java.sql.*;
import java.util.Scanner;

public class Select {
public void select()
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
      System.out.println("Please eneter the amount:");
	  Scanner sc=new Scanner(System.in);
      int Amount = sc.nextInt();
      stmt = conn.createStatement();
      
String sql = "select * from account where balance > "+Amount+"";
      //stmt.executeUpdate(sql);
	  ResultSet rs = stmt.executeQuery(sql);
			
			
			while(rs.next())
			{
				int acc_no=rs.getInt("Acc_no");
				String name=rs.getString("name");
				String bal=rs.getString("balance");
				String no=rs.getString("contact_no");
				System.out.println("Account number:"+acc_no);
				System.out.println("Account Name:"+name );
				System.out.println("Account Balance:"+bal);
				System.out.println("Contact Number:"+no);
				System.out.println();
			}
	  
	  
	  
	  
	  
     // System.out.println("Created table in given database...");
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