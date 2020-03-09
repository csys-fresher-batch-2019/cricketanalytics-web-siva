<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h4>Create New Player</h4>
		<form action="AdminPage.jsp">
			<div align="right">
				<button type=submit>AdminPage</button>
			</div>
		</form>
		<form action="Createnewcareerservlet">
			<br> Enter CapNo : <input type="text" name='CapNo'
				placeholder="Enter CapNo" pattern="[a-z]{1,2}[0-9]{3,}" autofocus
				required
				title="Cap number must have maximum two character and three digit number" />
			<br /> <br> Enter Player Name : <input type="text"
				pattern="[A-Z]{3,}" name="PlayerName" required
				title="Enter name in capital letters only"> <br /> <br>
			Choose a Nation : <select name="Nation" required="required">

				<option value="India">India</option>
				<option value="South Africa">South Africa</option>
				<option value="Australia">Australia</option>
				<option value="Pakistan">Pakistan</option>
				<option value="England">England</option>
			</select> <br /> <br> Batting Style : <input type="radio"
				name="Batting Style" value="Right Hand Batsman" required="required">
			Right Hand Batsman <input type="radio" name="Batting Style"
				value="Left  Hand Batsman" required="required"> Left Hand
			Batsman
			<required> <br />
			<br>
			Debut Match Year : <input type="number" id="debutYear"
				name="Debut Match Year" readonly> <br />
			<br>
			<br>
			<button type="submit">CREATE</button>
			<br />
		</form>
		<script>
			document.getElementById("debutYear").value = new Date()
					.getFullYear();
		</script>
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
	</center>
</body>


</html>