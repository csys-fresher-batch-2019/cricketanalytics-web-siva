
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.csys.PlayerProfile"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<% String name = (String) session.getAttribute("b");%>
<h2><%=name %></h2>
</center>
         <center>
		<table border="1">
				<tr>
					<th>CapNo</th>
					<th>Name</th>
					<th>DebutYear</th>
					<th>Style</th>
				</tr>
				<%
					List<PlayerProfile> list = (ArrayList) request.getAttribute("result");
					if (list.size() !=0) {
						
						for (PlayerProfile res : list) {
				%>
				<tr>
					<td><%=res.getCapNo()%></td>
					<td><a href="GetDetails?playerName=<%=res.getName()%>"><%=res.getName()%></a></td>
					<td><%=res.getDebutYear()%></td>
					<td><%=res.getStyle()%></td>
				</tr>

				<%
				}%></table></center>
				<%}%>
</body>
</html>