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
<title>예약확인페이지</title>
 <link rel="stylesheet" href="${path1 }/include/common.css"> 
<style type="text/css">
	.content{clear:both; width: 100%;}
	.reserveRead{width: 1200px; margin: 0 auto;}
</style>

</head>
<body>
	<div class="wrap">
		<c:import url="../include/header.jsp"></c:import>
		<div class="content">
			<div class="reserveRead">
				<h2>예약확인</h2>
				<ul>
					<li>예약번호 : ${reserve.rno }</li>
					<li>예약자 : ${reserve.rname }</li>
					<li>생년월일 : ${reserve.birth }</li>
					<li>전화번호  : ${reserve.phone }</li>
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
			</div>
		</div>
		<c:import url="../include/footer.jsp"></c:import>
	</div>	
</body>
</html>