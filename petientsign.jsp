<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>petient sign up</title>

<link rel="stylesheet" type="text/css" href="petientsign.css">


</head> 
    <body>
 
        <div class="form-wrapper">
             <div class="backnavbar">
    
      <a href="home.jsp">Home</a> 
      <a class="next">&#10095;</a>
      <a>Patient Sign Up<div class="doc-hr"></div></a>
      
     </div>
             <h1>Sign up</h1>
            <form>
            
            <label for="firstname">Patient Name:</label>
                <input type="text" id="name" name="pname" placeholder="Your Name">
                
                <label for="firstname">User Name:</label>
                <input type="text" id="username" name="username" placeholder="Your userName">
 
                <label for="mail">Email:</label>
                <input type="text" id="Email" name="Email" placeholder="Your email Name">
 
                
 
                <label for="pass">Password:</label>
                <input type="password" id="password" name="password" placeholder="Enter Password">
 
                
 
               
                <input type="Submit" value="submit">
            </form>
</div>

<%
String pname=request.getParameter("pname");
String user1=request.getParameter("username");
String email=request.getParameter("Email");
String pass=request.getParameter("password");




if(pname!=null && user1!=null && email!=null  && pass!=null)
{
try
{
	  Class.forName("org.postgresql.Driver");
	  Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","postgres");

		  Statement stmt = con.createStatement();
		  stmt.executeUpdate("insert into patient values('"+pname+"','"+user1+"','"+email+"','"+pass+"')");
			out.println("Success!");
			
			 %>
			 
			 <a href="petient.jsp">Login</a>
			 <%
}
catch(Exception e)
{
	e.printStackTrace();
	System.out.print(e);
}
}
else
{%>
	<script type="text/javascript" language="javascript">
	alert("Feilds must contains some value");
	</script>

<%}
%>

</body>
</html>