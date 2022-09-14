<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%
	Cookie cookie1 = new Cookie("name", "john"); //(쿠키네임, 쿠키밸류(타입text))
	Cookie cookie2 = new Cookie("age", "12");
	
	response.addCookie(cookie1); //리스판스로 쿠키를 받는다. 파라미터로 쿠키넣기
	response.addCookie(cookie2);
%>