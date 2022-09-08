<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<c:redirect url='main.jsp?msg=java님, 환영합니다.'/>
<%
	if(id == null || id != java || password == null || password != java) {
%>
<c:redirect url='login.jsp?msg=정확한 id와 password를 입력하세요.'/>
<%
	}
%>