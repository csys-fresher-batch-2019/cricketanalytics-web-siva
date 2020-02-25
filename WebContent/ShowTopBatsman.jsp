<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="com.csys.PlayerCareer"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<% String format = (String)session.getAttribute("match type"); %>
<title>TopBatsmanListFormatWise</title>
</head>
<body>
<center>
<h2> <%=format %></h2>
<table border = "1"> 
<tr>
<th>PLAYERNAME</th>
<th>NATION </th>
<th>AVERAGE</th>
<th>RANK</th>
</tr>
<%List<PlayerCareer> Result = (ArrayList) request.getAttribute("result"); %>
<%if(Result!=null){
for(PlayerCareer pc : Result){ %>
 <tr>
 <td><a href="GetDetails?playerName=<%=pc.getplayerName()%>"><%=pc.getplayerName()%></a></td>
 <td><%=pc.getnation()%></td>
 <td><%=pc.getAverage() %></td>
 <td><%=pc.getRanks() %></td>
</tr>
<%}} %>
</table>
</center>
</body>
</html>