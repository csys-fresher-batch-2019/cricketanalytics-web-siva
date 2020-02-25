<%@page import="com.sun.xml.internal.bind.v2.runtime.output.Pcdata"%>
<%@page import="com.csys.PlayerCareer"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>display Player career</title>
</head>
<body>
	<center>
		<br /> <br /> <br /> <br />
		
			<%
				ArrayList<PlayerCareer> list = (ArrayList) request.getAttribute("a");
			%>
			<%
				if (list.size()!= 0) {
					
					 String name = (String) session.getAttribute("Player Name");%>
					 
					 <h2> <%=name%> </h2>
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
				
				<%	for (PlayerCareer player : list) {%>
			
			<tr>
				<td><%=player.getCapNo()%></td>
				<td><%=player.getFormat()%></td>
				<td><%=player.getMatches()%></td>
				<td><%=player.getRuns()%></td>
				<td><%=player.getFifty()%></td>
				<td><%=player.getHundred()%></td>
				<td><%=player.getBest()%></td>
				<td><%=player.getAverage()%></td>
				<td><%=player.getRanks()%></td>
			</tr>

			<%
				}
				}
			%>


</table>
	</center>
</body>
</html>