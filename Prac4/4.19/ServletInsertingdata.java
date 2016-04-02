import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.*;
import java.sql.*;
@WebServlet("/ServletInsertingData")
public class ServletInsertingData extends HttpServlet
{
    Connection con=null;
    Statement stmt=null;
    ResultSet rs=null;
    String url="jdbc:mysql://localhost:3306/jdbc";
    String un="root";
    String pwd="payal";
    String tn="",tp="";
    public void init(ServletConfig sc) throws ServletException
    {
        super.init(sc);
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded");
            con=DriverManager.getConnection(url,un,pwd);
            System.out.println("Connected");
            stmt=con.createStatement();
            System.out.println("Wrapper Created");
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
    }
    public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
    {
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        doPost(req,res);
    }
    public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
    {
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        if(req.getParameter("btnsmt")!=null)
            {
                String n=req.getParameter("txtname");
                String p=req.getParameter("txtpass");
                String sql="insert into emp1 values('"+n+"','"+p+"')";
            out.println(sql);
            try
            {
                int r=stmt.executeUpdate(sql);
                out.println("data inserted succesfully");
            }
            catch(Exception e)
            {
                out.println(e+"sorry! Failure");
            }
            }
            out.println("<html><body>");
            out.println("<form method='Get' action='ServletInsertingData'><br><br>");
            out.println("Name:<input type='text' name='txtname'><br><br>");
            out.println("Password:<input type='text' name='txtpass'><br><br>");
            out.println("<input type='Submit' name='btnsmt' value='Submit'><br><br>");
            out.println("</form></body></html>");
                  
        }
}