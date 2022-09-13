<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] delProducts = request.getParameterValues("del");

	if(delProducts != null && delProducts.length > 0) {
		List<String> cart = new ArrayList<>();
		
		for(String delProduct: delProducts)
			cart.remove(delProduct);
		
		session.setAttribute("cart", cart);
	}		 
%>
<c:redirect url='cartOut.jsp'/>