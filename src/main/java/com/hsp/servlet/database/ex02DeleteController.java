package com.hsp.servlet.database;


import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hsp.servlet.common.MysqlService;
@WebServlet("/database/ex02/delete")
public class ex02DeleteController extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
		
		// 삭제 대상이될 행의 정보를 전달 받고, 해당 행을 삭제한다.
		// -> 행의 id 값을 전달 받고, 해당 행을 삭제한다.
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "DELETE FROM `new_user` WHERE `id` = " + id + ";";
		
		int count = mysqlService.update(query);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/database/ex02.jsp");
		
	}
}
