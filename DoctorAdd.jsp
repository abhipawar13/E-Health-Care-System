<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor ADD</title>

<link rel="stylesheet" type="text/css" href="petientsign.css">


</head> 
    <body>
 
        <div class="form-wrapper">
             <div class="backnavbar"><br><br>
      <a href="home.jsp">Home</a> 
      <a class="next">&#10095;</a>
      <a>Add Doctors<div class="doc-hr"></div></a>
     </div>
             <h1>Add Doctor</h1>
            <form>
                <label for="firstname">Doctor Name:</label>
                <input type="text" id="dname" name="name" placeholder="Your doctorName">
 
                <label for="mail">Email:</label>
                <input type="text" id="Email" name="email" placeholder="Your email Name">
                
                  <label for="Qualifiction">Qualification:</label>
                <input type="text" id="quali" name="qualftn" placeholder="Your qualification Name">
                <br>
                
     <label for="departments">Departments</label>
    
   <select id="departments" name="dept">
   <option>Select Department</option>
      <option>Neurology</option>
      <option>Gynaecology</option>
      <option>Ophathalmology</option>
       <option>Cardiology</option>
       <option>Oncology</option>
       <option>Nephrology</option>
       <option>Surgery</option>
    </select>
				<br>
				  <label for="username">Username:</label>
                <input type="text" id="uname" name="usrnm"> 
 
                <label for="pass">Password:</label>
                <input type="password" id="password" name="psw">
 
                
 
               
                <input type="Submit" value="submit">
            </form>
</div>

<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String qualiftn=request.getParameter("qualftn");
String depart=request.getParameter("dept");
String user=request.getParameter("usrnm");
String pass=request.getParameter("psw");
if(name!=null && email!=null && qualiftn!=null && depart!=null && user!=null && pass!=null)
{
try
{
	  Class.forName("org.postgresql.Driver");
	  Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","postgres");

		  Statement stmt = con.createStatement();
			stmt.execute("insert into doctor1 values('"+name+"','"+email+"','"+qualiftn+"','"+depart+"','"+user+"','"+pass+"')");
			out.println("Success!");
			 %>
			 <a href="Drlogin.jsp">Login</a>
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