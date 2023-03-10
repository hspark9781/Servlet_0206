<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*" %>
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
	List<Map<String, Object>> list = new ArrayList<>();
	Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	list.add(map);	
	
	String menu = request.getParameter("menu");
	
	String option = request.getParameter("option");
	// null은 어떤 형태로도 객체가 없는 형태 => 메소드를 사용할수 없는 형태=> 내가 비교연산자로 할대 nullexceoption 뜬 이유
%>


	<div class="container">
		<h2 class="text-center">검색 결과</h2>
			<table class="table text-center">
				<thead>
					<tr>
						<th>메뉴</th>
						<th>상호</th>
						<th>별점</th>
					</tr>
				</thead>
				<tbody>
					<% for(Map<String, Object> store:list) { 
						if(menu.equals(store.get("menu"))) { 	
								
								Double point = (Double)store.get("point");
								// pointLimit가 체크된 상태이면 4.0 이상만 보여준다.
								// pointLimit가 안된상태(null) 일때 보여준다.
								
								if(option == null || (option.equals("pointLimit") && point > 4.0)) {
									// || 앞에가 참이면 뒤 조건은 처리하지 않고 넘어간다.(중요!!)
							%>
					
					<tr>
						<td><%= store.get("menu") %></td>
						<td><%= store.get("name") %></td>
						<td><%= store.get("point") %></td>
					</tr>
					<%	}
						} 
					}
					%>
				</tbody>
			</table>
	</div>
					



</body>
</html>
					
					