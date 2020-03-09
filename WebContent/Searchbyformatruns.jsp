<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>select format and runs</title>
</head>
<body>
	<form action="Searchbformatrunsservlet">
		Format: <select name="format">
			<option value="odi">ODI</option>
			<option value="t20">T20I</option>
			<option value="test">TEST</option>
		</select> Enter Runs: <input type="number" value="runs" name="runs"
			placeholder="eg:0-10000..." required min="0">

		<button type="submit">DONE</button>
	</form>

	<%
		String a = (String) request.getParameter("res");
		if (a != null) {
			out.println("<font color = red>" + a + "</font>");
		}
	%>


</body>
</html>