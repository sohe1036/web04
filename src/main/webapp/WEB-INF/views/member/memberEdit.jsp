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
    .page { clear:both; min-height:100vh; display:none; width: 100%;}
    .page:target { display:block; }
    .content { clear: both; width: 100%; height: auto; overflow: hidden; }
    .sub_content { clear: both; width: 100%; height: auto; }
    .content_wrap {width: 1400px; margin: 0 auto;}
    input { border: 1px solid #ddd; width: 380px; height: 40px; }
    input:focus { border: 2.5px solid #1f75b0; }
    textarea { border: 1px solid #ddd; }
    textarea:focus { outline-color: #1f75b0;}
    .file { border: 0; padding-top: 15px;}

    .read_table { width: 100%; height: 650px; margin-top: 100px; }
    .read_table .inner { width: 1120px; margin: 0 auto; }
    .read_table .form_tb { display: table; width: 1000px; margin: 0 auto; }
    .read_table .form_tb tr { border-bottom: 1px solid #ddd; }

    .read_table .form_tb tr:first-child { border-top: 2px solid #1f75b0; }
    .read_table .form_tb tr:last-child { border: 0; }
    .read_table .form_tb th { width: 20%; font-size: 20px; height: 60px; line-height: 20px; }
    .read_table .form_tb td input { font-size: 16px; text-align: center; }
 
    .button { float: right; width: 120px; margin: 10px 20px 30px 0; color: #fff; font-size: 15px; margin-top: 30px;
        background-color: #1f75b0; }

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
                        	<form method="post" action="${path1 }/member/update.do">
	                            <table class="read_table">
	                                <tbody class="form_tb">
	                                    <tr>
	                                        <th>아이디</th>
	                                        <td><input type="text" name="u_id" value="${member.u_id }" readonly ></td>
	                                    </tr>
	                                    <tr>
	                                        <th>비밀번호</th>
	                                        <td><input type="password" name="u_pw" id="u_pw" value="${member.u_pw }" required></td>
	                                    </tr>
	                                    <tr>
	                                        <th>비밀번호 수정</th>
	                                        <td><input type="password" name="u_pw2" id="u_pw" value="${member.u_pw }" required></td>
	                                    </tr>
	                                    <tr>
	                                        <th>이름</th>
	                                        <td>${member.name }</td>
	                                        <td><input type="hidden" name="name" id="name" value="${member.name }" ></td>
	                                    </tr>
	                                    <tr>
	                                        <th>이메일</th>
	                                        <td><input type="email" name="email" id="email" value="${member.email }" required></td>
	                                    </tr>
	                                    <tr>
	                                        <th>휴대폰</th>
	                                        <td><input type="tel" name="tell" id="tell" value="${member.tell }" required></td>
	                                    </tr>
	                                    <tr>
	                                        <th>생년월일</th>
	                                        <td><input type="text" name="birth" id="birth" value="${member.birth }" required></td>
	                                    </tr>
	                                    <tr>
                                          <td colspan="2">
                                              <input type="submit" value="수정" class="button">
                                              &nbsp;&nbsp;
                                              <input type="reset" value="취소" class="button">
                                          </td>
                                      </tr>
	                                </tbody>
	                            </table>
		                     </form>       
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