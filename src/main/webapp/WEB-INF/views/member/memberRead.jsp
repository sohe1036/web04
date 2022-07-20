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
<title>내 정보 보기</title>
<style>
/*회원정보입력*/
    .content { clear: both; width: 100%; height: 1000px; }
    .join { clear: both; width: 100%; height: 100%; }
    .sub_top { clear: both; width: 100%; height: 150px; background-color: #ddd; }
    .sub_top .inner { width: 1250px; margin: 0 auto; } 
    .sub_top .inner h2 { padding: 40px 65px; }
    .sub_content { clear: both; width: 100%; height: 600px; }
    .sub_content .inner { width: 1100px; margin: 0 auto; margin-top: 100px; }
    .read_table { width: 100%; height: 650px; }
    .read_table { width: 1000px; height: 100%; border-collapse: collapse; }
    .read_table tr { width: 1000px; height: 40px; border-top: 1px solid #ddd; }
    .read_table th { width: 150px; }
    .read_table td { width: 500px; margin-left: 50px; }


    .join_btn { display: block; margin: 0 auto; width: 150px; height: 40px; font-size: 18px; 
        background-color: #0087ab; color: #fff; margin-top: 40px; }
    .button { float: right; }
    .button a { color: #fff; font-size: 15px;  padding: 10px 30px; background-color: #1f75b0; }
    .button a:last-child { margin: 30px 60px 30px 30px; }    

</style>
</head>
<body>
<div class="wrap">
	<%@include file="../include/header.jsp" %>
	 <div class="content">
	 	 <div class="sub_content">
             <div class="content_wrap">
                 <%@include file="../include/side.jsp" %>
                 <div class="join">
                 	<div class="sub_top">
                        <div class="inner">
                            <h2>회원정보입력</h2>
                        </div>
                    </div>
                    <div class="sub_content">
                        <div class="inner">
                             <table class="read_table">
                                 <tbody>
                                     <tr>
                                         <th>아이디</th>
                                         <td>${member.u_id }</td>
                                     </tr>
                                     <tr>
                                         <th>비밀번호</th>
                                         <td>${member.u_pw }</td>
                                     </tr>
                                     <tr>
                                         <th>이름</th>
                                         <td>${member.name }</td>
                                     </tr>
                                     <tr>
                                         <th>이메일</th>
                                         <td>${member.email }</td>
                                     </tr>
                                     <tr>
                                         <th>휴대폰</th>
                                         <td>${member.tell }</td>
                                     </tr>
                                     <tr>
                                         <th>생년월일</th>
                                         <td>${member.birth }</td>
                                     </tr>
                                 </tbody>
                             </table>
                             <div class="button">
                        		 <a href="${path1 }/member/edit.do?u_id=${sid }">정보 수정</a>
                           		 <a href="${path1 }/member/delete.do?u_id=${sid }">회원탈퇴</a>
                       		 </div>  
                        </div>    
                    </div>
                 </div>
             </div>
         </div>
    </div>
    <%@include file="../include/footer.jsp" %>              
</div>
</body>
</html>