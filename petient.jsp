<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>

<html lang="en" dir="ltr">
   <head>
    
      <title>Patient Login Form</title>
      <link rel="stylesheet" href="petient.css">
   </head>
   <body>
      <div class="wrapper">
       <div class="backnavbar">
    
      <a href="home.jsp">Home</a> 
      <a class="next">&#10095;</a>
      <a>Patient Login<div class="doc-hr"></div></a>
      
         <div class="title">
            Login Form
         </div>
         <form action="#">
            <div class="field">
               <input type="text" name="username">
               <label>Username</label>
            </div>
            <div class="field">
               <input type="password" name="password">
               <label>Password</label>
            </div>
            <div class="content">
               <div class="checkbox">
                  <input type="checkbox" id="remember-me">
                  <label for="remember-me">Remember me</label>
               </div>
               
            </div>
            <div class="field">
               <input type="submit" value="Login">
            </div>
            <div class="signup-link">
               Not a member? <a href="petientsign.jsp">Signup now</a>
            </div>
         </form>
      </div>
      
            
      <%
String user1=request.getParameter("username");
String password=request.getParameter("password");
                		  


session.setAttribute("a", user1);

try
{
	  Class.forName("org.postgresql.Driver");
	  Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","postgres");
	  Statement stmt = con.createStatement();
      ResultSet rs=stmt.executeQuery("select * from patient where uname='"+user1+"'");
	  rs.next();
	  String p=rs.getString("password");
	  
	  if(password.equals(p))
	  {
	   %>
	  <jsp:forward page="Appointment.jsp"/>
		  
	 <% }
	  else
		{
		 %><script type="text/javascript" language="javascript">
			  alert("Your ID and Password do not match.Enter a valid Login Id and Password.");
			  </script>
		 <%}
		
}
catch(Exception e)
{
	e.printStackTrace();
	System.out.print(e);
}

%>

   </body>
</html>