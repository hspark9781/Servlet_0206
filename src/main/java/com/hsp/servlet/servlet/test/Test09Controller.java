package com.hsp.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 자기 소개서를 전달받고, html 화면 구성
		String name = request.getParameter("name");
		String apply = request.getParameter("apply");
		
		out.println("<html><head><title>입사지원</title></head><body>");
		
		out.println("<h3>" + name + "님 지원이 완료 되었습니다. </h3> <hr>");
		out.println("<b>지원내용</b>" + "<br>" + apply);
		out.println("</body></html>");
		
		
	}

}
