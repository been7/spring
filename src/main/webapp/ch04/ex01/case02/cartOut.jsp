<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ page import='java.util.StringTokenizer' %>
<a href='main.html'>진열대</a>
<%
	List<String> cart = new ArrayList<>();

	StringTokenizer st = null;
	Cookie[] cookies = request.getCookies();
	
	for(Cookie cookie: cookies) {
		if(cookie.getName().equals("cart")) {
			String tmp = cookie.getValue(); //tmp에 담기는 것은 노트북/마우스라는 가정
			st = new StringTokenizer(tmp, "/"); //노트북, 마우스 이렇게 들어있다.
			while(st.hasMoreTokens()) //토큰있는지 확인. 있으니까 true
				cart.add(st.nextToken()); //노트북꺼내서 더하고 마우스꺼내서 더하고..다꺼내면 15번줄 false로 끝남.
		}
	}
	
	if(cart.size() > 0) { //물건이 있으면
%>
		<ul>
<% // <li>를 동적으로 만들기 위해 자바코드 사용.
			for(String product: cart) {//노트북,마우스를 차례대로 꺼냄
%>
				<li><%= product %></li>
<%
			}
%>		
		</ul>
<%
	} else out.println("물건이 없습니다.");
%>