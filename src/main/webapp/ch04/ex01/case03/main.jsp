<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	Object user = session.getAttribute("userId"); //userId를 user로 취급해서 쓰겠다.
	
	if(user == null) { //로그인 안했으면
		String userId = "";
		Cookie[] cookies = request.getCookies(); //어제는 로그인해서 쿠키로 저장한 적 있지만 오늘은 로그인한 적 없다. session엔 로그인정보X 쿠키엔 있겠죠.
		
		if(cookies != null) {	
			for(Cookie cookie: cookies)
				if(cookie.getName().equals("userId"))
					userId = cookie.getValue();
		}
%>
		<form action='loginProc.jsp' method='post'>
			ID: <input type='text' name='userId' value='<%= userId %>'/>
			PW: <input type='password' name='pw'/><br><br>
			<input type='checkbox' name='isStoreId' value='true'> ID 저장
			<input type='submit' value='로그인'/>
		</form> <%-- 지금까지는 로그인 안 한 상황 --%>
<%
	} else {
%>
	<%= user %>님, 환영합니다. &nbsp;
	<a href='logout.jsp'>로그아웃</a>
<%
	}
%>