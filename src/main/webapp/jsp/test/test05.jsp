<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.io.PrintWriter" %>
<html>
<head>
<meta charset="UTF-8">
<title>post method 2</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int length = Integer.parseInt(request.getParameter("length"));
		String[] unitArray = request.getParameterValues("unit"); 
		
		double unit = 0;
		String result = "";
		// foodString += foodArray[i] + " ";
		for(int i = 0; i < unitArray.length; i++) {
			if(unitArray[i].equals("inch")) {
				double inch = length * 0.39;
				result += inch + "in<br>";
			} else if(unitArray[i].equals("yard")) {
				double yard = length * 0.010936133;
				result += yard + "yd<br>";
			} else if(unitArray[i].equals("feet")) {
				double feet = length * 0.032808399;
				result += feet + "ft<br>";
			} else if(unitArray[i].equals("meter")) {
				double meter = length / 100.0;
				result += meter + "m<br>";
			} 
		}
	%>
	
	
		<h2>변환 결과</h2>
		<h3><%=length%>cm</h3>
		<hr>
		<h5><%=result%></h5>
	
		
	

</body>
</html>