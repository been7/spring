package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//C1 Get은 객체만 만들었을 뿐. HttpServlet 상속받아야함.
@WebServlet("/ch01/get/add") // url은 서버내에서 유일해야한다.
public class C1_Get extends HttpServlet { //자바언어로 웹앱 만들고싶어서 서블릿 씀
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) //(클라이언트가 서버로 보낸 리퀘스트,
		throws ServletException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	}
}
