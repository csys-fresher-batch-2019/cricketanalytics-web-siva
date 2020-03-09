<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.sun.xml.internal.bind.v2.runtime.output.Pcdata"%>
<%@page import="com.csys.model.PlayerCareer"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>display Player career</title>
</head>
<!--  -->
<body>
	<center>
		<br /> <br /> <br /> <br />

		<c:choose>

			<c:when test="${empty param.res}">

				<b> ${Name}</b>
				<br>
				<br>
				<table border="1">
					<tr>
						<th>CapNo</th>
						<th>Format</th>
						<th>Matches</th>
						<th>Runs</th>
						<th>Fifty</th>
						<th>Hundred</th>
						<th>High Score</th>
						<th>Average</th>
						<th>Rank</th>
					</tr>

					<c:forEach items="${a}" var="player">
						<tr>
							<td>${player.capNo}</td>
							<td>${player.format}</td>
							<td>${player.matches}</td>
							<td>${player.runs}</td>
							<td>${player.fifty}</td>
							<td>${player.hundred}</td>
							<td>${player.best}</td>
							<td>${player.average}</td>
							<td>${player.ranks}</td>
						</tr>
					</c:forEach>
				</table>

			</c:when>
			<c:otherwise>
				<font color="red">${param.res}</font>
			</c:otherwise>
		</c:choose>
	</center>


</body>
</html>