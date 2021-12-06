<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
 <head>
 <title>View appointment</title>
<link rel="stylesheet" type="text/css" href="Appointment.css">
 </head>
<body> 
<h1>Welcome<br><%= session.getAttribute("b") %></h1>
  <form> 
         <table>
           <tr> <th>Patient</th>
            <th>Doctor</th>
            <th>Department</th>
			
              </tr> 
				<form method="POST">
           
                              <%
                              String duser=(String)session.getAttribute("b");
                            
                              
                          Class.forName("org.postgresql.Driver");
                        Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","postgres");

                            Statement st = con.createStatement();
                            ResultSet rs;
                            rs = st.executeQuery("select pname,dname,department from patient,appointment where patient.uname=appointment.uname and username='"+duser+"'");
                            while (rs.next()) {

                                String name= rs.getString(1);
                                String dname = rs.getString(2);
                                String dept = rs.getString(3);
                               

                                out.println("<tr>");
                                out.println("<td>" + name + "</td>");
                                out.println("<td>" + dname + "</td>");                               
                                out.println("<td>" + dept + "</td>");
                                

                                
                                out.println("</tr>");

                            }
                            st.close();

                        %>


                      
                        </table>
            
                        <tr>
                        <td><input type="reset" value="Reset" /></td>
                        </tr> 
                    </form>
                    <br><br><a href='Drlogin.jsp'>Log out</a>
              
                </body>
                </html>