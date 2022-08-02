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
	.content {width:100%; clear:both;}
	.ajaxForm,.reserveRead {width:1000px; margin: 0 auto; margin-bottom: 50px;}
	.reserveRead ul{margin-top: 20px;}
</style>
</head>
<body>
	<div class="wrap">
		<c:import url="../include/header.jsp" />
		<div class="content">
			<div class="ajaxForm">
				<h1>예약 확인하기</h1>
				<form action="${path1 }/reserve/reserveRnoCheck.do" method="post">
					<input type="text" name="rno" id="rno" style="width: 250px; height: 38px; border: 1px solid #ddd;" required placeholder="예약번호 입력">
					<input type="submit" id="send_btn" value="확인">
				</form>	
			</div>
			<c:if test="${reserve.rno !=null }">
			<div class="reserveRead">
				<h2>예약확인</h2>
				<ul>
					<li>예약번호 : ${reserve.rno }</li>
					<li>예약자 : ${reserve.rname }</li>
					<li>생년월일 : ${reserve.birth }</li>
					<li>전화번호  : ${reserve.phone }</li>
					<li>병명  : ${reserve.treat }</li>
					<li>담당의사 : ${reserve.doctor }</li>
					<li>예약날짜 : ${reserve.rdate }</li>
					<li>예약시간 : ${reserve.time }</li>
					<c:if test="${reserve.memo !=null}">
					<li>메모 : ${reserve.memo }</li>
					</c:if>
				</ul>
				<ul>
					<c:if test="${reserve.confirm == null }">
					<li>예약 확인중</li>					
					</c:if>
					<c:if test="${reserve.confirm != null }">
					<li>예약완료</li>					
					</c:if>
				</ul>
				<ul>
					<li>
						<a href="${path1 }/reserve/reserveUpdateForm.do?rno=${reserve.rno }" class="button1">수정</a>
						<a href="${path1 }/reserve/" class="button1">삭제</a>
						<a href="${path1 }/reserve/reserveCheck.do" class="button0">다시 조회</a>
					</li>
				</ul>
			</div>
			</c:if>	
		</div>
		<c:import url="../include/footer.jsp" />
	</div>
</body>
</html>