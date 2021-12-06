<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<body>
<div class="backnavbar">
    
      <a href="home.jsp">Home</a> 
      <a class="next">&#10095;</a>
      <a>Patients<div class="doc-hr"></div></a>
   
<h1>Welcome<br><%= session.getAttribute("a") %></h1>
    <form>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Appointments</title>
        <link rel="stylesheet" type="text/css" href="Appointment.css">
    </head>

  <form> 
         <table>
           <tr> <th>Patient</th>
           <th>User_id</th>
            <th>Email</th>
            
            
            
              </tr> 
				<form method="POST">
           
                              <%
                          Class.forName("org.postgresql.Driver");
                        Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","postgres");

                            Statement st = con.createStatement();
                            ResultSet rs;
                            rs = st.executeQuery("select * from patient");
                            while (rs.next()) {

                                String name= rs.getString(1);
                                String user = rs.getString(2);
                                String email = rs.getString(3);
                                

                                out.println("<tr>");
                                out.println("<td>" + name + "</td>");
                                out.println("<td>" + user + "</td>");
                                                            
                                out.println("<td>" + email + "</td>");
                                
                               
                               out.println("</tr>");

                            }
                            st.close();

                        %>


                      
                        </table>
            
                                        </form>
                    <br><br><a href='Admin.jsp'>Log out</a>
              
                </body>
                </html>