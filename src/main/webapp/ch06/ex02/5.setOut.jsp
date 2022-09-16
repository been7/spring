<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

${fruit} <br> <!-- page스콥은 죽임 -->
${pageScope.fruit} <br>
${requestScope.fruit} <br>
${sessionScope.fruit} <br>
${applicationScope.fruit} <br>
