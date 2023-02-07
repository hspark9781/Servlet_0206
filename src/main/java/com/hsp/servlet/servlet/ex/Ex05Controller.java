package com.hsp.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/ex05")
public class Ex05Controller extends HttpServlet{

	@Override  // post는 form을 통해서만
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		// get으로 할때는 상관없지만 post는 response.set인코딩이 되지 않는다.
		// -> request를 설정해줘야한다. body안에서도 인코딩 필요 =>값 적용
		// 긴데이터의 파라미터일 경우 post 그외는 get
		PrintWriter out = response.getWriter();


		// 이름과 생년월일을 전달 받고, 이름과 나이를 html로 구성

		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");

		String yearString = birthday.substring(0,4);
		int year = Integer.parseInt(yearString);
		int age = 2023 - year + 1;

		out.println("<html><head><title>이름나이</title></head><body>");

		out.println("<h2>이름 : " + name + "</h2>");
		out.println("<h3>나이 : " + age + "</h3>");





		out.println("</body></html>");





	}

}
