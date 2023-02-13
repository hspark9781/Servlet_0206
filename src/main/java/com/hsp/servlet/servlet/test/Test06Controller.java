package com.hsp.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		PrintWriter out = response.getWriter();
		
		// 두개의 수를 전달 받아서, 더하고 빼고, 곱하고, 나눈 결과를 json으로 구성한다.
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		int plus = number1 + number2;
		int minus = number1 - number2;
		int multi = number1 * number2;
		int div = number1 / number2;
		
		
		// json = 자바스크립트규격을 문자열로 표현
		// {"addition":10, "subtraction":5, "multiplication":25, "division":2}
		// ""안에 "" => \"
		out.println("{\"addition\":" + plus 
				+ ", \"subtraction\":" + minus 
				+ ", \"multiplication\":" + multi 
				+ ", \"division\":" + div + "}");
		

		
	
		
	}

}
