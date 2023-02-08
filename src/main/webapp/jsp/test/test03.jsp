<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 결과</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<%
		// BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0));
		int height = Integer.parseInt(request.getParameter("cm"));
		int weight = Integer.parseInt(request.getParameter("kg"));
		double bmi = weight / ((height / 100.0) * (height / 100.0));
		int bmiInt = weight / ((height / 100) * (height / 100));
		String answer = null;
		if(bmi <= 20) {
			answer = "저체중";
		} else if(bmi <= 25) {
			answer = "정상";
		} else if(bmi <= 30) {
			answer = "과체중";
		} else {
			answer = "비만";
		}
	%>
	
	<div class="container">
		<h3>BMI 측정 결과</h3>
		<div class="display-4">당신은 <span class="text-info"><%=answer %></span> 입니다. </div>
		<div>BMI 수치 : <%=bmi %> </div>
	</div>
		
		


</body>
</html>