<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.csys.model.PlayerCareer"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <%String format = (String) session.getAttribute("match type");%> -->
<title>TopBatsmanListFormatWise</title>
</head>
<body>
	<center>
		<h2>
			<b>${param.format}</b>
		</h2>
		<table border="1">
			<tr>
				<th>PLAYERNAME</th>
				<th>NATION</th>
				<th>AVERAGE</th>
				<th>RANK</th>
			</tr>
			<!--  <%List<PlayerCareer> Result = (ArrayList) request.getAttribute("result");%>-->

			<c:forEach items="${result}" var="list">
				<tr>
					<td><a href="GetDetails?playerName=${list.playerName}">${list.playerName}</a></td>
					<td>${list.nation}</td>
					<td>${list.average}</td>
					<td>${list.ranks}</td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>