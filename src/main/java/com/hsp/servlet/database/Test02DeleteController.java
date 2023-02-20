package com.hsp.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hsp.servlet.common.MysqlService;
@WebServlet("/database/test02/delete")
public class Test02DeleteController extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		int id = Integer.parseInt(request.getParameter("id"));
		String query="DELETE FROM `url` WHERE `id` = " + id + ";";
		
		int count = mysqlService.update(query);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/database/test02.jsp");
		
		
		
		
		
		
		
		
	}
}
