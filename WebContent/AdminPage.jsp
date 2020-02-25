<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<form action ="Login.jsp">
<div align ="right">
<a href="Login.jsp">Logout</a>
</div>
</form>
<style>
	body
	{
		font-family:Arial;
		background-color:#D1CDCD;
		background-repeat:no-repeat;
	}
	
	.container
	{
		margin-top:110px;
		height:auto;
	}
	button
	{
		width:200px;
		height:60px;
		background-color:#050D01;
		border-radius:10px;
		
	}
</style>
</head>
<body>
<center><h1>ADMIN</h1></center>
<div class="element">
<div class="container">
<center><button><a href ="Createnewplayer.jsp" style="color:white;" class = "s">Create New Player</a></button></center>
<br><br>
<center><button><a href ="Updateretiredyear.jsp" style="color:red;">Update retired year</a></button></center>
<br><br>
<center><button><a href ="addmatchdetail.jsp" style="color:blue;">Match Summary</a></button></center>
<br><br>
</div>
<!-- <form action = "Rankingservlet">
Assign Ranking:
<select name ="format">
<option value ="odi">ODI</option>
<option value ="t20">T20I</option>
<option value ="test">TEST</option> 
</select>
<button type = "submit">Assign</button>
</form>
<br><br><br>
<form action ="Playerlist">
  Nation:
  <select name = "nation">
  <option value ="India">INDIA</option>
  <option value ="Australia">AUSTRALIA</option>
  <option value ="England">ENGLAND</option>
  <option value ="South Africa">SOUTH AFRICA</option>
  <option value ="Pakistan">PAKISTAN</option>
  </select>
  <button type = "submit"> Click </button>  
  </form> -->
  </div>
</body>
</html>