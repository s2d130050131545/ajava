//STEP 1. Import required packages
import java.util.Scanner;

public class Account {
        
		public static void main(String args[])
		{
	  Insert insert = new Insert();
	  Delete delete = new Delete();
	  Update update = new Update();
	  Select select = new Select();
int ch;
	  do
	  {
		  	   System.out.println();
		System.out.println("Please enter your choice:");
	   System.out.println();
      System.out.println("1. For Creating a new user:");
	  System.out.println("2. For Updating a Existig user:");
	  System.out.println("3. For Deleting a Existig user:");
	  System.out.println("4. For Selecting a user according to their account value:");
	  System.out.println("5. Exit.");
	  System.out.println();
	  
	  Scanner sc=new Scanner(System.in);
      ch = sc.nextInt();
	  switch(ch)
	  {
		  case 1: insert.insert();
		  break;
		  case 2: update.update();
		  break;
		  case 3: delete.delete();
		  break;
		  case 4: select.select();
		  break;
		  case 5: System.out.println("Thank You for using our service.");
		  break;
		  default: System.out.println("Please enter the right choice:");
	  }
	  }while (ch != 5);
		}
}//end main
