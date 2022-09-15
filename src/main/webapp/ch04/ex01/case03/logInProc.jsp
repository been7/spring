<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<% //로그인폼에서 파라미터 세개 넘겼지만 패스워드는 무시하고 두개만,,
	String userId = request.getParameter("userId");
	String isStoreId = request.getParameter("isStoreId");
	
	if(!userId.equals("")) { //userId값이 있으면,,
		session.setAttribute("userId", userId); //session에 저장
		
		if(isStoreId != null && isStoreId.equals("true")) {
			Cookie cookie = new Cookie("userId", userId); //쿠키만들어서 클라이언트에 저장
			cookie.setMaxAge(10); //테스트를 위해 10초 후에는 id자동입력 안되게함.
			response.addCookie(cookie);
		}
	}
%>
<c:redirect url='main.jsp'/> 