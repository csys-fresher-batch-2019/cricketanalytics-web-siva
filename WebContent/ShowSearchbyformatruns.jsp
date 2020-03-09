<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.csys.model.formatruns"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ShowSearchbyformatandruns</title>
</head>
<body>
	<center>
		<br>
		<br>
		<br>
		<%
			ArrayList<formatruns> frun = (ArrayList) request.getAttribute("frunslist");
			if (frun.size() != 0) {
		%>

		<table border="1">
			<tr>
				<th>Name</th>
				<th>Runs</th>
			</tr>

			<%
				for (formatruns frs : frun) {
			%>
			<tr>
				<td><a href="GetDetails?playerName=<%=frs.getPlayerName()%>"><%=frs.getPlayerName()%></a></td>
				<td><%=frs.getRuns()%></td>
			</tr>
			<%
				}
			%>
		</table>
		<%
			} else {
		%>
		<h2>out.println("None of the players cross the specified run
			mark")</h2>
		<%
			}
		%>
	</center>
	<br>
	<br>
	<form action="UserPage.jsp">
		<center>
			<button type="submit">Back</button>
		</center>
	</form>
</body>
</html>