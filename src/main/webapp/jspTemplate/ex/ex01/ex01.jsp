<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>현재 시간</h1>
	
	<%-- 현재 시간을 보여준다 --%>
	
	<%-- 다른 jsp파일 포함시키기(정적방식)
	다른 포함 시킨 파일의 모든걸 사용할수 있지만 안정적이지 않음
	(동적방식)을 더 많이 사용 --%>
	<%@ include file="date.jsp" %> <%-- 정적방식 --%>
	
	<%= dateString %>
	
	
	

</body>
</html>