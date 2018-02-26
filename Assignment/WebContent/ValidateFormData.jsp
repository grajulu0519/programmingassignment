<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Validate</title>
<style type="text/css">
html{
background: lightgrey;
}
@media screen and (min-width: 360px) {
   html body {
    float: left;
    width: 50%;
  }
}
@media screen and (min-width: 720px) {
  html body {
    width: 25%;
  }
}
h3{
color: red;
text-align: center;
}
</style>
</head>
<body>
 <jsp:useBean id="vb" class="pack.ValidateBean" />
 
  <jsp:setProperty name="vb" property="emailAddress" />
  <jsp:setProperty name="vb" property="zipcode" />
 
  <h3>
  <% if(!vb.validateEmail()){
  	out.println("Your email address is less than 7 characters or invalid");
  }
  if(!vb.validateZip()){
	out.println("Your Zip code is invalid");  
  }

	%></h3> 

	<%if(vb.validateEmail() && vb.validateZip()){	
	
		session.setAttribute("custname",request.getParameter("cname"));
		session.setAttribute("ssn",request.getParameter("ssn"));
		session.setAttribute("zip",request.getParameter("zipcode"));
		session.setAttribute("streetaddr",request.getParameter("street_address"));
		session.setAttribute("emailaddr",request.getParameter("emailAddress"));
		session.setAttribute("city",request.getParameter("city"));
		session.setAttribute("state", request.getParameter("state"));
		response.sendRedirect("location");
		
	}
  %> 
  <a href="GetFormData.jsp">Back</a>
  
  <br>
  <b>Thank You</b>

</body>
</html>