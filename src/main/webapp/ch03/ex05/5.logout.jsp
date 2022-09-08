<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='5.main.jsp'>main</a>
<% //클라이언트가 로그아웃요청했다? 서버는 세션 없애야함.
	session.invalidate(); //잘 기억하세용
%> 