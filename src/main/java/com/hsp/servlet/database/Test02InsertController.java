package com.hsp.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hsp.servlet.common.MysqlService;
@WebServlet("/database/test02/insert")
public class Test02InsertController extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		String query = "INSERT INTO `url`\r\n"
				+ "(`name`, `url`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE \r\n"
				+ "('" + name + "', '" + url + "', now(), now());";
		
		int count = mysqlService.update(query);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/database/test02.jsp");
		
	}

}
