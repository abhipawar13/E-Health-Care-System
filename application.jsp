<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
   
    <title>application form</title>
    <link rel="stylesheet" href="application.css">
    
</head>
<body>
   <div class="bg-img">
    <div class="backnavbar">
    
      <a href="home.jsp"><b>Home</a> 
      <a class="next">&#10095;</a>
      <a>Application Form<div class="doc-hr"></div></a>
      
     </div>
    <div class="wrapper">
	<div class="registration_form">
		<div class="title">
			Application Form
		</div>

		<form>
			<div class="form_wrap">
				<div class="input_grp">
					<div class="input_wrap">
						<label for="fname">Applicant Name</label>
						<input type="text" id="fname">
					</div>
				</div>
				<div class="input_wrap">
					<label for="email">Email Address</label>
					<input type="text" id="email">
				</div>
				<div class="input_wrap">
					
				</div>
				<div class="input_wrap">
					<label for="city">Qualification</label>
					<input type="text" id="Qualification">
				</div>
				<div class="input_wrap">
					<label for="city">Experiance</label>
					<input type="text" id="experiance">
				</div>
				<div class="input_wrap">
					<label for="country">Contact</label>
					<input type="text" id="Contact">
				</div>
               <div class="input_wrap">
					<label for="country">Password</label>
					<input type="password" id="password">
				</div>
				<div class="input_wrap">
					<input type="submit" value="Apply Now" class="submit_btn">
				</div>
			</div>
		</form>
	</div>
</div>
</div>
</body>
</html>
