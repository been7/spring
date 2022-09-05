<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%-- directive --%>
<% //scriptlet
	int num1 = 1;
	int num2 = 2; //서블릿으로 작성한걸 jsp로 변환할 뿐.
%>
<h2>더하기</h2>
<%= num1 %> + <%= num2 %> = <%= num1 + num2 %> <!--  expression -->