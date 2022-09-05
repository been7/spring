<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.time.LocalDate' %> <%-- 클래스가 하나 만들어지고 상단에 2.임포트 들어가겠구나 --%>
<%@ page import='java.util.Date' %>
<%
	LocalDate date = LocalDate.now();
	Date date2 = new Date();
%>
<%= date %><br>
<%= date2 %>

