
4.21 Inserting data from the HTML page to the database
------------------------------------------------------
In this program we are going to make program in which we are going to insert the values in the database table from the html form.
To make our program working we need to make one html form in which we will have two fields, one is for the name and the other one  is for entering the password. At last we will have the submit form, clicking on which the values will be passed to the server.
The values which we have entered in the Html form will be retrieved by the server side program which we are going to write. To accomplish our goal we first have to make a class named as ServletInsertingDataUsingHtml which must extends the abstract HttpServlet class, the name of the class should be such that the other person can understand what this program is going to perform. The logic of the program will be written inside the doGet() method which takes two arguments, first is HttpServletRequest interface and the second one is the HttpServletResponse interface and this method can throw ServletException.
Inside this method call the getWriter() method of the PrintWriter class. We can insert the data in the database only and only if there is a connectivity between our database and the java program. To establish the connection between our database and the java program we firstly need to call the method forName() which is static in nature of the class Class. It takes one argument which tells about the database driver  we are going to use. Now use the static method getConnection() of the DriverManager class. This method takes three arguments and returns the Connection object. SQL statements are executed and  results are returned within the context of a connection. Now your connection has been established. Now use the method prepareStatement() of the Connection object which will return the PreparedStatement object and takes one a query which we want to fire as its input. The values which we have got from the html will be set in the database by using the setString() method of the PreparedStatement object.
If the record will get inserted in the table then output will show "record has been inserted"  otherwise "sorry! Failure".

![insert](https://cloud.githubusercontent.com/assets/16938695/13903179/bb80def0-ee96-11e5-98e6-fb9930fb945a.png)
![op](https://cloud.githubusercontent.com/assets/16938695/13903181/c2cc4168-ee96-11e5-8d4f-05b0109f5249.png)
![sql payal](https://cloud.githubusercontent.com/assets/16938695/13903182/c6e8f3c2-ee96-11e5-8745-d8a6e915f39a.png)![insert](https://cloud.githubusercontent.com/assets/16938695/13903260/7fbe3158-ee99-11e5-813f-3157c0f3787e.png)
![sql payal](https://cloud.githubusercontent.com/assets/16938695/13903261/8559e328-ee99-11e5-8070-102742ae0a2f.png)
![op](https://cloud.githubusercontent.com/assets/16938695/13903262/8c59d30e-ee99-11e5-9255-f1505fa813d0.png)


