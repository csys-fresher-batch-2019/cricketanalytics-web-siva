<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<br><br><center>
<h2>Admin Login</h2>
<br><br>
</center>
<body><center>
<form action = "Loginservlet">
<center>
Username:
<input type ="text"  name="Username" required autofocus>
<br><br>
Password:
<input type ="password"  name = "password" required>
<br><br>
<button type="submit">Login</button>
</form>
<% String msg = request.getParameter("res");
if(msg!=null){out.println("<center><font color=red><br>" + msg + "</font></center>");}%>

</center>
</body>
</html>