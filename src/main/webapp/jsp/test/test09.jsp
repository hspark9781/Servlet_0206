<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar 1</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        
</head>
<body>


	
	

	
	<h4>오늘부터 1일</h4>
	<%
		Calendar calendar = Calendar.getInstance();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
		//오늘을 1일로 하기 위해서
		calendar.add(Calendar.DATE, -1); 
		
		for(int i = 1; i <= 10; i++) {
			calendar.add(Calendar.DATE, 100);
			String dateString = formatter.format(calendar.getTime());
	%>
	

	<h3><span class="font-weight-light"><%=100 * i %>일 : </span> <span class="text-danger font-weight-light"><%= dateString  %></span></h3>
	<% } %>
		
		
		
		
		
		
	

	

</body>
</html>