<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.csys.model.PlayerCareer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String select = (String) session.getAttribute("choice");
	%>
	<%
		String format = (String) session.getAttribute("Type");
	%>
	<h2>
		List of Players who have
		<%=select%>
		in
		<%=format%>
		format
	</h2>
	<%
		List<PlayerCareer> result = (ArrayList) request.getAttribute("hScore");
	%>


	<%
		if (result.size() != 0) {
	%>
	<table border="1">
		<tr>
			<th>PlayerName</th>
			<th>HighScores</th>
		</tr>

		<%
			for (PlayerCareer obj : result) {
		%>
		<tr>
			<td><%=obj.getplayerName()%></td>
			<td><%=obj.getBest()%></td>
		</tr>
		<%
			}
		%>
	</table>
	<%
		}
	%>
</body>
</html>