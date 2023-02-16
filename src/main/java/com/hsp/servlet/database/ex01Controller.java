package com.hsp.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hsp.servlet.common.MysqlService;

@WebServlet("/db/ex01")

public class ex01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// used_goods에 있는 모든 행을 html로 표현
//		MysqlService mysqlService = new MysqlService();
		MysqlService mysqlService = MysqlService.getInstance(); // private으로 막았기 때문에 getInstance를 통해서만 호출 할 수 있다.
		// 접속
		mysqlService.connect();
		//쿼리수행
		ResultSet resultSet = mysqlService.select("SELECT * FROM `used_goods`;");
		out.println("<html><head><title></title></head><body>");
		
	//<div> 제목 : 플스4 가격 : 200000원</div>
		try {
			while(resultSet.next()) {
				
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				
				out.println("<div> 제목 : " + title + " 가격 : " + price + "</div>");
				
				
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		
		
		String insertQuery = "INSERT INTO `used_goods`\r\n"
				+ "(`sellerId`, `title`, `price`, `description`, `picture`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "(3, '고양이 간식 팝니다', 2000, '저희 고양이가 안먹어서 팝니다', NULL, now(), now());";
		
//		int count = mysqlService.update(insertQuery);
//		out.println("<div>삽입 결과 : " + count + "</div>");
		
		mysqlService.disconnect();
		out.println("</body></html>");
		
		
		// 데이터베이스 접속
//		try {
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			
//			// 접속 주소, 아이디, 비밀번호
//			String url = "jdbc:mysql://localhost:3306/hsp_0119";
//			String userId = "root";
//			String password = "root";
//			
//			// 접속
//			Connection connection = DriverManager.getConnection(url, userId, password);
//			Statement statment = connection.createStatement();
//			
//			// 쿼리 수행
//			String selectQuery = "SELECT * FROM `used_goods`;";
//			ResultSet resultSet = statment.executeQuery(selectQuery);
//			
//			out.println("<html><head><title></title></head><body>");
//				
//			//<div> 제목 : 플스4 가격 : 200000원</div>
//			while(resultSet.next()) {
//				
//				String title = resultSet.getString("title");
//				int price = resultSet.getInt("price");
//				
//				out.println("<div> 제목 : " + title + " 가격 : " + price + "</div>");
//				
//				
//			}
//			
//			out.println("</body></html>");
//			
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		
		
		
		
	}
	
}
