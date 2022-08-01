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
.reserveList {width: 1120px; margin: 0 auto;} 
.reserveList li {float:left; width: 25%;}
 
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
                        <!-- 메인메뉴에 따라 이름을 바꿔주세요 -->
                        <h2>예약목록</h2> 
                    </div>
                    <div class="reserveList">
                    	<ul>
                    		<li>예약번호</li>
                    	</ul>
                    	<ul>
                    		<li>예약자</li>
                    	</ul>
                    	<ul>
                    		<li>예약날짜</li>
                    	</ul>
                    	<ul>
                    		<li>예약시간</li>
                    	</ul>
                    <c:forEach items="${reserveList }" var="list">
                    	<ul>
                    		<li>${list.rno }</li>
                    	</ul>
                    	<ul>
                    		<li>${list.rname }</li>
                    	</ul>
                    	<ul>
                    		<li>${list.rdate }</li>
                    	</ul>
                    	<ul>
                    		<li>${list.time }</li>
                    	</ul>
                    </c:forEach>	
                    </div>
              	</div>
             </div>       
		</div>
		<c:import url="../include/footer.jsp"></c:import>
	</div>
</body>
</html>