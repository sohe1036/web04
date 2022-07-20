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
<title>로그인폼</title>
<style>
	.content { clear: both; width: 100%; height: auto; overflow: hidden; }
    .sub_content { clear: both; width: 100%; height: auto; }
    .content_wrap {width: 100%; margin: 0 auto; height: 600px;}
    
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

    .page_tit { width: 100%; height: 70px; margin-top: 30px; border-bottom: 1px solid #ddd; }
    .page_tit .inner { width: 1120px; height: 100%; margin: 0 auto; }
    .page_tit h3 { float: left; font-size: 36px; padding-top: 5px; }
    .page_tit p { float: right; font-size: 14px; line-height: 80px; color: rgb(123, 123, 123); }
    .page_tit p a { color: rgb(123, 123, 123); }
    .page_tit .loca2 { color: #000; }
    
    
/* login.html */
   .login_wrap {width: 1060px; margin: 0 auto; height: 800px; padding-bottom: 200px;}
   .login_box {border: 1px solid #ececec; width: 520px; height: 250px; margin: 50px auto; }
   .login_form {height: 0px;}
   .login_form_wrap {width: 530px;  padding: 20px}
   .login_tb {width: 470px; height: 190px;}
   .login_form input {width: 350px; padding:11px 6px 11px 6px; float: left; margin-bottom: 10px ;border: 1px solid #d0d0d0; color: #979d9d; ;}
   .botton_box {float: left;}
   .button_box button { border:1px solid rgb(31, 117, 176); background-color: rgb(117, 182, 224); color: #222222; width: 100px; height: 87px; margin-top: 67px; margin-left: 20px; font-size: 16px;}
   .jointitle {clear: both; padding-left: 30px; padding-top: 20px;}
   .jointitle a {float:right; padding-right: 40px; text-decoration: none; color:#222222}
   .jointitle span>a:hover {color: blue}
   .login_form_tit {font-size: 20px; color: #222222; padding-bottom: 20px;}
   .login_wrap h2 {padding-left: 25%; padding-top: 30px;padding-bottom: 30px;}
   .button_box button:hover {cursor:pointer; background-color: rgb(31, 117, 176);border:1px solid rgb(117, 182, 224); transition: 1s; color:#fff}

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
	                    <h2>로그인</h2> 
	                </div>     
	            </div>
                 <div class="page_tit">
                     <div class="inner">
                         <h3>로그인</h3>
                         <p>
                             <span><a href="${path1 }/">HOME</a></span> 
                             &nbsp;&nbsp;
                             >
                             &nbsp;&nbsp;
                             <span class="loca2">로그인</span>
                         </p>
                     </div>    
                 </div>
                 <div class="login_box">
                     <form action="${path1 }/member/login.do" method="post">
                                 <div class="login_form">
                                     <div class="login_form_wrap">
                                         <div class="login_form_tit">
                                             <span>회원 로그인<span>
                                         </div>
                                         <input type="text" name="u_id" id="u_id"  required placeholder="아이디">
                                         <input type="password" name="u_pw" id="u_pw" required placeholder="비밀번호">		
                                     </div>						
                                 </div>
                                 <div class="button_box">
                                     <button type="submit">로그인</button>
                                 </div>
                     </form>
                     <div class="jointitle">
                         <span> 회원이 아니세요? <a href="${path1 }/member/joinForm.do">회원가입</a></span>
                     </div>	
                 </div>
           </div>
        </div>       
    </div>
       <%@include file="../include/footer.jsp" %>                
</div>
</body>
</html>