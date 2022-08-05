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
<title>예약목록</title>
 <link rel="stylesheet" href="${path1 }/include/common.css"> 
 <style>
 .content {clear: both; width: 100%;}
 .sub_bg_img{height: 142px; background-image: url("/img/sub_visual01.jpg");}
.sub_bg_menu h2 {width: 1120px; margin: 0 auto; line-height: 120px; color: #000; font-size: 38px;font-weight: 300; font-family: 'Noto Sans KR', sans-serif}
.reserveList {width: 1120px; margin: 0 auto; overflow: hidden; margin-bottom: 30px;} 
.reserveList li {float:left; width: 20%;}
 .tit {font-size: 24px; text-align: center; margin-bottom: 30px;}
 .txt {font-size: 20px; text-align: center; margin-bottom: 15px;}
 </style>
</head>
<body>
	<div class="wrap">
		<c:import url="../include/header.jsp"></c:import>
		<div id="content" class="content clrfx">
			 <div class="sub_wrap">
                <c:import url="../include/side.jsp"></c:import>
                <div class="sub_bg_menu">
                    <div class="sub_bg_img">
                        <h2>예약목록</h2> 
                    </div>
                    <div class="reserveList">
                    	<ul>
                    		<li class="tit">예약번호</li>
                    	</ul>
                    	<ul>
                    		<li class="tit">예약자</li>
                    	</ul>
                    	<ul>
                    		<li class="tit">예약날짜</li>
                    	</ul>
                    	<ul>
                    		<li class="tit">예약시간</li>
                    	</ul>
                    	<ul>
                    		<li class="tit">확정여부</li>
                    	</ul>
                    <c:forEach items="${reserveList }" var="list">
                    	<ul>
                    		<li class="txt"><a href="${path1 }/reserve/getReserve.do?rno=${list.rno}">${list.rno }</a></li>
                    	</ul>
                    	<ul>
                    		<li class="txt">${list.rname }</li>
                    	</ul>
                    	<ul>
                    		<li class="txt">${list.rdate }</li>
                    	</ul>
                    	<ul>
                    		<li class="txt">${list.time }</li>
                    	</ul>
                    	<c:if test="${list.confirm !=null }">
                    	<ul>
                    		<li class="txt">${list.confirm }</li>
                    	</ul>
                    	</c:if>
                    	<c:if test="${list.confirm ==null }">
                    	<ul>
                    		<li class="txt">예약대기</li>
                    	</ul>
                    	</c:if>
                    </c:forEach>	
                    </div>
              	</div>
             </div>       
		</div>
		<c:import url="../include/footer.jsp"></c:import>
	</div>
</body>
</html>