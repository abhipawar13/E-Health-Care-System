<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>

<!DOCTYPE html>
<html>
<body>

    <form>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Appointments</title>
        <link rel="stylesheet" type="text/css" href="Appointment.css">
    </head>

  <form> 
         <table>
           <tr> <th>Patient Name</th>
            <th>Doctor</th>
            <th>Department</th>
			
              </tr> 
				<form method="POST">
<%

String user1=(String)session.getAttribute("a");
String dname=request.getParameter("name");
String department=request.getParameter("dept");
String username=request.getParameter("username");

out.println("<tr>");
out.println("<td>" + user1 + "</td>");
out.println("<td>" + dname + "</td>");
out.println("<td>" + department + "</td>");
out.println("</tr>");



try{
	 Class.forName("org.postgresql.Driver");
	  Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","postgres");

		  Statement stmt = con.createStatement();
			stmt.execute("insert into appointment values('"+user1+"','"+username+"','"+dname+"','"+department+"')");
			%>
			<script type="text/javascript" language="javascript">
			alert("Your Appointment is Booked");
			</script>

		<%
}
catch(Exception e)
{
	e.printStackTrace();
}

%></form></table></body></html>