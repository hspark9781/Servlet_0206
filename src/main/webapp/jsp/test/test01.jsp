<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<html>
<head>
<meta charset="UTF-8">
<title>JSP스크립트요소</title>
</head>
<body>
	<!-- 1.점수 평균 구하기 -->
	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for(int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		
		double avg = sum / scores.length;
	%>
	<h2>점수 평균은 <%= avg %> 입니다.</h2>
	
	<!-- 2. 채점결과 -->
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int sum2 = 0;
		for(String score:scoreList) {
			if(score.equals("O")) {
				sum2 += 10;
			}
		}
	%>
	<h2>채점 결과는 <%= sum2 %>점 입니다.</h2>



	<!-- 3. 1부터 n까지의 합계를 구하는 함수 -->
	<%!
		public int getSum(int n) {
		int sum = 0;
		for(int i = 1; i <= n; i++) {
			sum += i;
		}
		return sum;
	}
	%>
	
	<h2>1에서 50까지의 합은 <%= getSum(50) %></h2>
	
	
	<!-- 4. 나이 구하기 -->
	<%
		String birthDay = "20010820";
		String yearString = birthDay.substring(0, 4);
		int year = Integer.parseInt(yearString);
		int age = 2023 - year + 1;
	%>
	
	<h2><%=birthDay %> 의 나이는 <%=age %>살 입니다.</h2>
</body>
</html>