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
<link rel="stylesheet" href="${path1 }/include/common.css">
<title>마이 페이지</title>
<style>
/*마이페이지*/
    .content { clear: both; width: 100%; height: auto; overflow: hidden; }
    .sub_content { clear: both; width: 100%; height: auto; }
    .content_wrap {width: 100%; margin: 0 auto;}
    
   /*수정한부분*/
    .sub_bg_img{height: 142px; background-image: url("../img/bg_sub_top1.jpg");}
    .sub_bg_menu h2 {width: 1120px; margin: 0 auto; line-height: 142px; color: #fff; font-size: 38px;font-weight: 300;}
    .sub_bg_text {width: 1120px; margin: 0 auto; height: 100%; text-align: center;}  
    .sub_bg_text a b {color: #fff; font-weight: normal; position: relative;}         
    .sub_bg_text a b:after {content:""; background-color: #91e9ff; position: absolute; left: 0;bottom:-18px ;width: 100%; height: 10px; text-align: center;}

    /*경로안내 수정 및 추가한 부분*/
    .page_tit { width: 100%; height: 70px; margin-top: 30px; border-bottom: 1px solid #ddd; }
    .page_tit .inner { width: 1120px; height: 100%; margin: 0 auto; }
    .page_tit p { float: right; font-size: 14px; line-height: 30px; color: rgb(123, 123, 123); }
    .page_tit p a { color: rgb(123, 123, 123); }
    .page_tit .loca2 { color: #000; }

    .page_tit { width: 100%; height: 70px; margin-top: 30px; border-bottom: 1px solid #ddd; }
    .page_tit .inner { width: 1120px; height: 100%; margin: 0 auto; }
    .page_tit h3 { float: left; font-size: 36px; padding-top: 5px; }
    .page_tit p { float: right; font-size: 14px; line-height: 80px; color: rgb(123, 123, 123); }
    .page_tit p a { color: rgb(123, 123, 123); }
    .page_tit .loca2 { color: #000; }

   .sub_content { clear: both; width: 100%; height: 800px; }
   .sub_content .inner { width: 1100px; margin: 0 auto; margin-top: 100px; height: 100%; }
   .sub_content .inner h2 { margin-bottom: 50px; }
   .sub_content .inner li { font-size: 25px; height: 30px; padding: 10px 0; }
   
   .button0{display: inline-block; width: 100px;}
	.button1{display: inline-block; width: 100px;}
	.button0{ border: 1px solid #ddd; height: 30px; color: rgb(0, 0, 0); }
	.button1{border: 1px solid #0087ab; height: 30px; color:#0087ab}
</style>
</head>
<body>
<div class="wrap">
	<%@include file="../include/header.jsp" %>
	 <div class="content">
	 	 <div class="sub_content">
             <div class="content_wrap">
                 <%@include file="../include/side.jsp" %>
                 <div class="sub_bg_menu">
	                <div class="sub_bg_img">
	                    <!-- 메인메뉴에 따라 이름을 바꿔주세요 -->
	                    <h2>마이페이지</h2> 
	                </div>   
	            </div>
	            <div class="page_tit">
                   <div class="inner">
                       <h3>${member.name }님  마이페이지</h3>
                       <p>
                           <span><a href="${path1 }/">HOME</a></span> 
                           &nbsp;&nbsp;
                           >
                           &nbsp;&nbsp;
                           <span class="loca2">마이페이지</span>
                       </p>
                   </div>    
               </div>
                 <div class="sub_content">
                     <div class="inner">
                     	<ul>
                     		<li>
                     			<a href="${path1 }/member/read.do?u_id=${sid }">내 정보  ></a>
                     		</li>
                     		<li>
                     			<a href="${path1 }">내 Q&A  > </a>
                     		</li>
                     		<li>
        						<form method="post" action="${path1 }/reserve/reserveRead.do">
        							<span>예약 조회하기</span>
        							<input type="text" name="rno" id="rno" style="width: 150px; height: 40px; border:1px solid #ddd; text-align: center;">
        							<input type="submit" value="확인" class="button1" >
        						</form>
                     		</li>
                     		<c:if test="${sid=='admin' }">
                     		<li>
                     			<a href="${path1 }/member/memlist.do">회원리스트  ></a>
                     		</li>
                     		<li>
                     			<a href="${path1 }/databank/writeForm.do">자료실 추가  ></a>
                     		</li>
                     		<li>
                     			<a href="${path1 }/board/write_form.do">게시판 추가  ></a>
                     		</li>
                     		<li>
                     			<a href="${path1 }/reserve/reserveList.do">예약목록  ></a>
                     		</li>
                     	</c:if>
                     	</ul>
                     </div>
                 </div>     
             </div>
         </div>
     </div>            
	 <%@include file="../include/footer.jsp" %>   
</div>
</body>
</html>