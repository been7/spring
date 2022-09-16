<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ul> <!-- 이제 ul가지고서 유저데이터 출력 -->
	<li>${user}</li>
	<li>${user.userName}</li> <!-- 사실은 user.getuserName 이 콜되는 것 -->
	<li>${pageScope.user.userName}</li>
	<li>${requestScope.user.userName}</li>
	<li>${sessionScope.user.userName}</li>
	<li>${applicationScope.user.userName}</li>
</ul>