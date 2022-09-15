<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String cart = "";
	Cookie[] cookies = request.getCookies(); 
	for(Cookie cookie: cookies)
		if(cookie.getName().equals("cart")) 
			cart = cookie.getValue();
	
	String[] products = request.getParameterValues("product"); //앞에서 삭제하겠다고 한 물건 모은다
	if(products != null && products.length > 0) { //삭제하겠다는 물건 있으면
		for(String product: products)
			cart = cart.replaceFirst(product, ""); //노트북/마우스상태에서 노트북 없애고싶다 그러면 /부분을 emptystring으로 바꾸면 된다.
			
		Cookie cookie = new Cookie("cart", cart); //이렇게 완성된 카트를 쿠키로서 덮어쓰기 해주면
		response.addCookie(cookie);
	} else {
%>
		<c:redirect url='cartOut.jsp'>
			<c:param name='msg' value='장바구니에서 뺄 물건을 선택하세요.'/>
		</c:redirect>
<%
	}
%>
<c:redirect url='cartOut.jsp'/>