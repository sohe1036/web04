<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>예약확인</title>
<link rel="stylesheet" href="../include/common.css">
 <script src="https://code.jquery.com/jquery-latest.js"></script>
<style>
	.content {width:100%; clear:both; min-height: 500px;}
	.checkForm {width:1000px; margin: 0 auto; margin-bottom: 50px; padding-top: 80px;}
	.reserveRead ul{margin-top: 20px; }
	form {padding-top:60px;}
</style>
</head>
<body>
	<div class="wrap">
		<c:import url="../include/header.jsp" />
		<div class="content">
			<div class="checkForm">
				<h1>예약 확인하기</h1>
				<form action="${path1 }/reserve/reserveDetail.do" method="post">
					<!-- <input type="text" name="rno" id="rno" style="width: 250px; height: 38px; border: 1px solid #ddd;" required placeholder="예약번호 입력"> -->
					<input type="text" name="rname" id="rname" style="width: 250px; height: 38px; border: 1px solid #ddd;" required placeholder="예약자 성함">
					<input type="text" name="birth" id="birth" style="width: 250px; height: 38px; border: 1px solid #ddd;" required placeholder="예약자 생년월일 예)2000-01-01">
					<input type="submit" id="send_btn" value="확인">
				</form>	
			</div>
		</div>
		<c:import url="../include/footer.jsp" />
	</div>
</body>
</html>