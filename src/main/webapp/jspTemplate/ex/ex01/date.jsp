<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import="java.util.*" %>
	<%@ page import="java.text.SimpleDateFormat" %>
    <%-- 현재 시간을 보여주는 페이지 --%>
    
    <%
    	Date now = new Date();
    	SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    	
    	String dateString = formatter.format(now);
    %>
    
    <h3><%=dateString %></h3>