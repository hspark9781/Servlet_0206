package com.hsp.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hsp.servlet.common.MysqlService;

@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		out.println("<html><header><title></title></header><body>");
		mysqlService.connect();
		
		ResultSet resultSet = mysqlService.select("SELECT * FROM `real_estate`;");
		
		String insertQuery = "INSERT INTO `real_estate`\r\n"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentprice`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE \r\n"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', '1500000', NULL, now(), now());";
		
		
		mysqlService.disconnect();
		out.println("</body></html>");
		
		
	}

}
