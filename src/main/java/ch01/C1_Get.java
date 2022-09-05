package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//C1 Get�� ��ü�� ������� ��. HttpServlet ��ӹ޾ƾ���.
@WebServlet("/ch01/get/add") // url�� ���������� �����ؾ��Ѵ�.
public class C1_Get extends HttpServlet { //�ڹپ��� ���� �����; ���� ��
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) //(Ŭ���̾�Ʈ�� ������ ���� ������Ʈ,
		throws ServletException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		res.setContentType("text/html; charset=utf-8");
		PrintWriter out = res.getWriter();
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	}
}
