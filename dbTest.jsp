<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
    <title>dbTest</title>
  </head>
  <body>
  <%
   String DRIVER  ="com.mysql.jdbc.Driver";
   String dbUrl = "jdbc:mysql://dendb01.cskemcbsojqs.me-south-1.rds.amazonaws.com:3306/rentman?" + "autoReconnect=true&useSSL=false";
   String userName = "admin";
   String password = "Mysql123";
   
   try  {
    Class.forName(DRIVER);
    java.sql.Connection conn = java.sql.DriverManager.getConnection(dbUrl,userName,password);
    out.println("Hi Dennis, Connection created");
    
    java.sql.Statement stmt=conn.createStatement();
     String qry="SELECT * FROM user";
    java.sql.ResultSet rs=stmt.executeQuery(qry);
    while(rs.next())
    {
    out.println(rs.getString("USER_NAME"));
    }
    
    
   } catch (Exception ex)  {
       ex.printStackTrace();
   } 
   
    
  
  %>
  
  </body>
</html>