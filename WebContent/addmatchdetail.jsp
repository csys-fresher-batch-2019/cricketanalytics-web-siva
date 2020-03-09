<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.sun.xml.internal.bind.v2.runtime.output.Pcdata"%>
<%@page import="com.csys.dao.imp.PlayerProfileDaoImplementation"%>
<%@page import="com.csys.model.PlayerCareer"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	font-family: Arial;
	background-color: #D1CDCD;
	background-repeat: no-repeat;
}

.container {
	width: 49%;
	height: auto;
	display: block;
	background-color: #EFEAEA;
	border-radius: 15px;
	margin-left: 300px;
	margin-top: 60px;
}

a {
	width: 5%;
	height: auto;
	display: inline-end;
	background-color: #EFEAEA;
	boder-radius: 15px;
	margin-left: 400px;
}

input[type=text] {
	display: block;
}
</style>
</head>
<body>
	<center>
		<h2>ADMIN</h2>
	</center>
	<center>
		<h3>Add Match Summary</h3>
	</center>
	<form action="AdminPage.jsp">
		<div align="right">
			<button type=submit>AdminPage</button>
		</div>
	</form>
	<div class="container">
		<form action="Addmatchdetailservlet">
			<center>Enter cap number:</center>
			<center>
				<input type="text" name="cap" pattern="[a-z]{1,2}[0-9]{3,}"
					autofocus required
					title="Cap number must have minimum one character and three digit number" />
				<br />
			</center>
			<br>
			<center>Enter format:</center>
			<center>
				<select name="type">
					<option value="odi">ODI</option>
					<option value="t20">T20I</option>
					<option value="test">TEST</option>
				</select>
			</center>
			<br>
			<center>Enter runs:</center>
			<center>
				<input type="number" value="runs" name="runs"
					placeholder="Enter runs scored" required min="0" max="400">
			</center>
			<br>
			<br>
			<button type="submit">INSERT</button>

		</form>

		<a href="viewmatchsummary.jsp">ViewSummary</a>
	</div>
	<%
		String result = (String) request.getParameter("res");
		if (result != null) {
			out.println("<center><font color=red><br>" + result + "</font></center>");
		}
	%>
	<%
		String res = (String) request.getParameter("res1");
		if (res != null) {
			out.println("<center><font color=green><br>" + res + "</font></center>");
		}
	%>

</body>
</html>