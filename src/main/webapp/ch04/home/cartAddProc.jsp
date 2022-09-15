<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String cart = ""; //카트값은 두가지. 안에 물건있든가 텅비어서 empty string이든가..
	Cookie[] cookies = request.getCookies(); //클라이언트가 담아준 쿠키 꺼냄
	for(Cookie cookie: cookies)
		if(cookie.getName().equals("cart")) // jsession에서 내가원하는 카트쿠키 찾기
			cart = cookie.getValue();
			
	String[] products = request.getParameterValues("product"); //전 폼에서 담아준 물건 배열에 담는다
	if(products != null && products.length > 0) {
		for(String product: products) //물건 이터레이팅해서 발견되는 족족 카트에 넣는다.
			cart += product + "/";
		
		Cookie cookie = new Cookie("cart", cart); //쿠키하나 준비
		cookie.setMaxAge(60 * 60 * 24 * 7); //장바구니 일주일 보관
		response.addCookie(cookie); //완성된 쿠키 리판에 넣기		
	} else { //물건 없을 때
%>
		<c:redirect url='main.jsp'> <%-- 물건없으면 다시 홈으로 보내야함 --%>
			<c:param name='msg' value='장바구니에 담을 물건을 선택하세요.'/>
		</c:redirect>
<%
	}
%>
<c:redirect url='cartOut.jsp'/>