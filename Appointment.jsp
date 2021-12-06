<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<body background="http://www.teamarking.com/barcode/bar_background.jpg"> 
<h1>Welcome<br><%= session.getAttribute("a") %></h1>
    <form>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Appointments</title>
        <link rel="stylesheet" type="text/css" href="Appointment.css">
    </head>

  <form> 
         <table>
           <tr> <th>Doctor</th>
            <th>Email</th>
            <th>Qualification</th>
            <th>Department</th>
			<th>Username</th>
            <th>Appointment</th>
            
              </tr> 
				<form method="POST">
           
                              <%
                          Class.forName("org.postgresql.Driver");
                        Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","postgres");

                            Statement st = con.createStatement();
                            ResultSet rs;
                            rs = st.executeQuery("select * from doctor1");
                            while (rs.next()) {

                                String name= rs.getString(1);
                                String email = rs.getString(2);
                                String quali = rs.getString(3);
                                String dept = rs.getString(4);
                                String username = rs.getString(5);

                                out.println("<tr>");
                                out.println("<td>" + name + "</td>");
                                out.println("<td>" + email + "</td>");
                                                            
                                out.println("<td>" + quali + "</td>");
                                out.println("<td>" + dept + "</td>");
                                out.println("<td>" + username + "</td>");

                                out.println("<td><b><form action='Appointment1.jsp'><input type='submit' value='APPOINTMENT'>  <input type=\"hidden\" id=\"activityid1Value\" name=\"name\" value=\""+name +"\"><input type=\"hidden\" id=\"activityid1Value\" name=\"dept\" value=\""+dept +"\"><input type=\"hidden\" id=\"activityid1Value\" name=\"username\" value=\""+username +"\"></form></b>");
                                out.println("</tr>");

                            }
                            st.close();

                        %>


                      
                        </table>
            
                        <tr>
                        <td><input type="reset" value="Reset" /></td>
                        </tr> 
                    </form>
                    <br><br><a href='petient.jsp'>Log out</a>
              
                </body>
                </html>