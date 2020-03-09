<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.csys.dao.imp.PlayerProfileDaoImplementation"%>
<%@page import="com.csys.dao.imp.PlayerCareerDaoImp"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.csys.model.PlayerProfile"%>
<%@page import="java.util.List"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!--  <%PlayerProfileDaoImplementation obj = new PlayerProfileDaoImplementation();
			List<String> names = obj.getPlayerName();
			String s = (String) request.getAttribute("cap");%>
		<form action = "Getcapnoservlet">
	 		Search by name: 
	 		<input name = "playerName"  list="Search_by_name_list"  required>
	 		<datalist id = "Search_by_name_list">
	  		<%for (String a : names) {%>
				<option value = "<%=a%>"><%=a%></option>
	  		<%}%></datalist>
	  		<button type="submit" >Getcapno</button>
  		</form>-->
	<div align="right">
		<form action="AdminPage.jsp">
			<button type="submit">AdminPage</button>
		</form>
	</div>
	<form action="Updateretiredyearservlet">
		Enter cap number: <input type="text" name="capno"
			pattern="[a-z]{1,}[0-9]{3,}" autofocus required
			title="Cap number must have minimum one character and three digit number" />
		<br /> <br>
		<br> Enter retired year: <input type="number" id="retyear"
			name="retyear" readonly> <br>
		<br>
		<button type="submit">Update</button>
	</form>


	<script>
		document.getElementById("retyear").value = new Date().getFullYear();
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
</body>
</html>