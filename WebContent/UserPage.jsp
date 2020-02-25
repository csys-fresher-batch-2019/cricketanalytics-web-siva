
<%@page import="com.csys.PlayerProfileDaoImplementation"%>
<%@page import="com.csys.PlayerCareerDaoImp"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.csys.PlayerProfile"%>
<%@page import="java.util.List"%>
<%@page import="com.sun.xml.internal.bind.v2.runtime.output.Pcdata"%>
<%@page import="com.csys.PlayerCareer"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Cricket Stats</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">	
</head>
<style>
#button-panel {
    float:right; /* right */
}
</style>
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
<center><h3></h3></center>
<br><br>
</nav>
<img src="bat.gif" alt="Batting" align="right" width="300" height="300">
<body> 
<h1 style="color:blue;">Cricket Statistics</h1>

<% PlayerProfileDaoImplementation obj = new PlayerProfileDaoImplementation();  
 List<String> names = obj.getPlayerName(); %>
 <pre>


</pre>
<form action ="GetDetails">

 Search by name: 
 <input name = "playerName"  list="Search_by_name_list"  required>
 <datalist id = "Search_by_name_list">
  <%for(String a : names)
  {%>
<option value = "<%=a %>"><%=a %></option>
  <%}
  %>
  
  </datalist>
  <button type ="submit"> Click </button>
  </form>
  <%if(request.getAttribute("Error")!=null)
   {%>
  <h2><%=request.getAttribute("Error")%></h2>
   <%} %>
 
 <form action = "DisplayTopBatsman">
 TopBatsman in:
 <select name = "format">
 <option value = "odi">ODI</option>
 <option value = "t20">T20I</option>
 <option value = "test">TEST</option>
 </select>
 <button type = "submit"> Click </button>
 </form>
 
 <% PlayerCareerDaoImp pcdi = new PlayerCareerDaoImp();
 int n = 5;
 String format = request.getParameter("format");
 List<PlayerCareer> top = pcdi.displaytopbatsman(format, n);  %>
  </body>
  </html> 

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
  </form>
  
 
 <form action = "GetHighScore">
 Pick:
 <select name = "pick">
 <option value = "highscore">High Score</option>
 <option value = "more number of runs">More Number of Runs</option>
 <option value = "more number of fifties">More Number of Fifties</option>
 <option value = "more number of hundreds">More Number of Hundreds</option> 
 </select> 
 Format:
 <select name = "format">
 <option value = "odi">ODI</option>
 <option value = "t20">T20I</option>
 <option value = "test">TEST</option>
 </select>
 <button type ="submit"> Click </button>
  </form>
  
   <form>
   
  <a href ="Searchbyformatruns.jsp">ListbySpecificFormatandRuns</a>  
  </form>
 
  
  
  