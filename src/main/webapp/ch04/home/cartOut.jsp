<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ page import='java.util.StringTokenizer' %>
<a href='main.jsp'>진열대</a>
<h3>장바구니</h3>
<% //리퀘에 있는 쿠키 꺼내서 카트 준비?
	String cart = "";
	Cookie[] cookies = request.getCookies(); 
	for(Cookie cookie: cookies)
		if(cookie.getName().equals("cart")) 
			cart = cookie.getValue();
	
	if(cart != "") { //리퀘에 카트가 있으면
		StringTokenizer products = new StringTokenizer(cart, "/"); //해당내용을 토큰으로 쪼갬
%>
		<form action='cartDelProc.jsp' method='post'>
			<ul> 
<% //li를 동적으로 만들어야함
				String product = ""; //물건하나 담을 변수
				while(products.hasMoreTokens()) { //토큰 이터레이팅
					product = products.nextToken(); //물건하나를 꺼내면 해당물건을 가지고 li 하나를 만들어야죠
%>
					<li><%= product %><input type='checkbox' name='product' value='<%= product %>'/></li>
<%
				}
%>									
			</ul>
			<button type='submit'>빼기</button>
		</form>
<%
		String msg = request.getParameter("msg");
		if(msg != null) out.println(msg);
	} else out.println("장바구니에 물건이 없습니다."); //장바구니 없는 경우도 장바구니물건없다고 통일시킴.
%>