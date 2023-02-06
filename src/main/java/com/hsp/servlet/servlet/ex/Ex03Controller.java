package com.hsp.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		
		// 이름과 생년월일을 전달받고 이름과 나이를 html로 보여준다.
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday"); // 20011204
		
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		int age = 2023 - year + 1;
		
//		out.println("<html><head><title>get method</title></head><body>");
//		
//		out.println("<h2> 이름 : " + name + "</h2>");
//		out.println("<h3> 나이 : " + age + "</h3>");
//		
//		out.println("</body></html>");
		
		// 이름과 나이를 데이터로 response에 담는다.
		// json
		// {"name" : "박현석", "age" : "27"} - map
		//[] List
		// [
		//		{"name" : "박현석", "age" : "27"}
		// 		{"name" : "유재석", "age" : "28"}
		// ]
		
		out.println("{\"name\" : \"" + name + "\",  \"age\" :" + age + "}");
		
		
		
		
	}
	
	
	
	
	
	
	
	
	

}
