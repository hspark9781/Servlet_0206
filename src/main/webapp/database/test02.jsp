<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.hsp.servlet.common.MysqlService" %>
    <%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		String query= "SELECT * FROM `url`;";
		ResultSet resultSet = mysqlService.select(query);
		
	%>
		<div class="container mx=auto">
			<table class="table">
				<thead>
					<tr class="text-center">
						<th>사이트</th>
						<th>사이트 주소</th>
					</tr>
				</thead>
				<tbody>
				<% while(resultSet.next()) { %>
					<tr class="text-center">
						<td><%= resultSet.getString("name") %></td>
						<td><a href="<%= resultSet.getString("url")%>"><%= resultSet.getString("url")%></a></td>
						<td><a href="/database/test02/delete?id=<%= resultSet.getInt("id")%>">삭제</a></td>
					</tr>
				<% } %>
				</tbody>
			</table>
			<a href="/database/test02_input.jsp">추가</a>
		</div>


</body>
</html>