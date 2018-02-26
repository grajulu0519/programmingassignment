<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
@media screen and (min-width: 360px) {
 #processData  html body {
    float: left;
    width: 50%;
  }
}
@media screen and (min-width: 720px) {
 #processData  html body {
    width: 25%;
  }
}
html{
background: lightgrey;
}
#processData {
	margin-left: 35%;
    margin-right: 55%;
	width: 350px;
	text-align: center;
	 position: absolute;
    left: 0;
 	/*  margin-top: 10%; */
}
h1{
	 top: 55%;
   	text-align: center;
    font-size: 25px;
    
     /* width: 350px;
    text-align: center;
    font-size: 18px; */
}

</style>

<title>Display Data</title>
</head>
<body>
<h1>Your Details</h1>
<table border="1" cellspacing="1" cellpadding="2" bgcolor="cornsilk" id="processData">
<tr bgcolor="cornsilk">
<td valign="top">
Customer Name is <%=session.getAttribute("custname") %><br>
</td></tr>
<tr bgcolor="cornsilk">
<td valign="top">
SSN <%=session.getAttribute("ssn") %><br>
</td></tr>
<tr bgcolor="cornsilk">
<td valign="top">
Zip Code <%=session.getAttribute("zip") %><br>
</td></tr>
<tr bgcolor="cornsilk">
<td valign="top">
Email Address <%=session.getAttribute("emailaddr") %><br>
</td></tr>
<tr bgcolor="cornsilk">
<td valign="top">
Street Address <%=session.getAttribute("streetaddr") %><br></td></tr>
<tr bgcolor="cornsilk">
<td valign="top">
City <%=session.getAttribute("city") %><br>
</td></tr>
<tr bgcolor="cornsilk">
<td valign="top">
State <%=session.getAttribute("state") %><br></td></tr>
<!-- <form action="/location" method="post">
<input type="button"  value="Submit" /> -->
<tr bgcolor="cornsilk">
<td valign="top">
Longitude : <%=session.getAttribute("longitude") %><br></td></tr>
<tr bgcolor="cornsilk">
<td valign="top">
Latitude : <%=session.getAttribute("latitude") %><br></td></tr>
<%-- <% out.println(request.getAttribute("Location")); %><br> --%>
</table>
</form>

</body>
</html>