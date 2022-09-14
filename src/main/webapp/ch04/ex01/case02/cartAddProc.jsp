<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");

	if(products != null) {
		String cart = "";
		for(String product: products) cart += product + "/"; //물건하나씩 꺼내서 담는다 를 붙이기로 표현.
		
		Cookie cookie = new Cookie("cart", cart); //그냥 물건담겨있는 카트를 쿠키로 생성
		cookie.setMaxAge(60 * 60 * 24 * 7); //장바구니 일주일간 유지시키고싶다.
		response.addCookie(cookie);
	}
%>
<c:redirect url='cartOut.jsp'/>