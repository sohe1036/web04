<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>testB</title>
<%@include file="../include/header.jsp" %>
</head>
<body>
<header id="hd">
<%@include file="../include/menu.jsp" %>
</header>
<h1>테스트B</h1>
<div id="content">
	<h2>${msg }</h2>
	<c:forEach items="${map }" var="friends" varStatus="status">
		${friends.key }/${friends.value }  <br><br>	
	</c:forEach>
</div>
</body>
</html>