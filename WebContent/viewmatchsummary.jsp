<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.csys.model.MatchData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

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
	width: 35%;
	height: auto;
	display: block;
	background-color: #EFEAEA;
	boder-radius: 15px;
	margin-left: 500px;
	margin-top: 60px;
}

.a {
	width: 5%;
	height: auto;
	display: block;
	background-color: #EFEAEA;
	border-radius: 15px;
	margin-left: 500px;
}

input[type=text] {
	display: block;
}
</style>
</head>
<body>
	<form action="Viewmatchsummaryservlet">
		status: <input type="radio" name="status" value="updated"
			required="required">updated <input type="radio" name="status"
			value="yet to update" required="required">newly added
		<button type="submit">OK</button>
	</form>
	<br>
	<br>
	<form action="addmatchdetail.jsp">
		<button type="submit">Back</button>
	</form>
	<%
		String status = (String) session.getAttribute("state");
		List<MatchData> lists = (ArrayList) request.getAttribute("view");
		if (lists != null) {
	%>
	<div class="container">
		<table cellspacing="10">
			<tr>
				<th>Cap No</th>
				<th>Format</th>
				<th>Runs</th>
				<th>status</th>
			</tr>
			<%
				for (MatchData md : lists) {
			%>
			<tr>
				<td><%=md.getCapNo()%></td>
				<td><%=md.getFormat()%></td>
				<td><%=md.getRuns()%></td>
				<td><%=md.getStatus()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>
	<div class="a">
		<%
			if (status.equals("updated")) {
		%>
		<form action="Deletematchdetailservlet">
			<button type="submit">Delete</button>
		</form>
		<%
			} else {
		%>
		<form action="Updatecareerservlet">
			<button type="submit">Update</button>
		</form>
		<%
			}
		%>
		<%
			}
		%>
	</div>
	<center>
		<%
			String res = (String) request.getParameter("res1");
			if (res != null) {
				out.println("<center><font color=green><br>" + res + "</font></center>");
			}
		%>
	</center>
</body>
</html>