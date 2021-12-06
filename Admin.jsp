<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin form</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body{
            font-family: "Open Sans";
            font-size: 20px;
            color: black;
        }
        section{
            background: url("./admin.jpg");
            height: 100vh;
            width: 100%;
            background-size: cover;
            background-position: center center;
        }
        .form-container{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 380px;
            padding: 50px 30px;
            border-radius: 10px;
            box-shadow:7px 7px 60px #000;
        }
        h1{
            color: orange;
            font-size: 2em;
            text-transform: uppercase;
            text-align: center;
            margin-bottom: 2rem;
        }
        .control input{
            padding: 10px;
            font-size: 16px;
            display: block;
            width: 100%;
            color:#000;
            background: #ddd;
            outline: none;
            border: none;
            margin: 1em 0;

        }         
        .control .btn{
            color: #fff;
            text-transform: uppercase;
            background: dodgerblue;
            opacity: .7;
            transition:opacity .3s ease;
        }
        .btn:focus{
            opacity: 1;
        }
        p{
            text-align: center;
        }
        a{
            text-decoration: none;
            color: green;
            opacity: .7;
        }
        a:hover{
            opacity: 1;
        }
        .button:hover {
  background-color:black;
}
    </style>
</head>
<body>
    <section>
     <div class="backnavbar">
    
      <a href="home.jsp">Home</a> 
      <a class="next">&#10095;</a>
      <a>Admins<div class="doc-hr"></div></a>
        <div class="form-container">
            <h1>Welcome<p>Admin</h1>
        <form>
            <div class="control">
            <label for="name">Username</label>
            <input type="text" id="username" name="username" type="username">
            </div>
            <div class="control">
            <label for="psw">Password</label>
            <input type="password" id="psw" name="password" type="password">
            </div>
            <span><input type="checkbox"> Remember me</span>
            <div class="control">
            <input type="submit" class="btn" value="Login">
            </div>
        </form>
        
        </div>
    </section>
    
      <%
String user1=request.getParameter("username");
String password=request.getParameter("password");
                		  


session.setAttribute("a", user1);

try
{
	  Class.forName("org.postgresql.Driver");
	  Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","postgres");
	  Statement stmt = con.createStatement();
      ResultSet rs=stmt.executeQuery("select * from admin where userid='"+user1+"'");
	  rs.next();
	  String p=rs.getString("password");
	  
	  if(password.equals(p))
	  {
	   %>
	  <jsp:forward page="database.jsp"/>
		  
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
