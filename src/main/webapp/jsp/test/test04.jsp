<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post method 1</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int inputNumber1 = Integer.parseInt(request.getParameter("number1"));
		int inputNumber2 = Integer.parseInt(request.getParameter("number2"));
		String calculate = request.getParameter("calculate");
		
		double answer = 0;
		if(calculate.equals("add")) {
			calculate = "+";
			answer = inputNumber1 + inputNumber2;
		} else if(calculate.equals("sub")) {
			answer = inputNumber1 - inputNumber2;
			calculate = "-";
		} else if(calculate.equals("multi")) {
			answer = inputNumber1 * inputNumber2;
			calculate = "X";
		} else {
			answer = inputNumber1 / inputNumber2;
			calculate = "/";
		}
		
		
	%>
	
	<h3>계산 결과</h3>
	<h2><%=inputNumber1 %> <%=calculate %> <%=inputNumber2 %> = <span class="text-primary"><%=answer %></span></h2>

</body>
</html>