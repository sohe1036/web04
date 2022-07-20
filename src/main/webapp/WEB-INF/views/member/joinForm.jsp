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
<title>회원가입폼</title>
<style>
/*회원정보입력*/
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

    .page_tit { width: 100%; height: 70px; margin-top: 30px; border-bottom: 1px solid #ddd; }
    .page_tit .inner { width: 1120px; height: 100%; margin: 0 auto; }
    .page_tit h3 { float: left; font-size: 36px; padding-top: 5px; }
    .page_tit p { float: right; font-size: 14px; line-height: 80px; color: rgb(123, 123, 123); }
    .page_tit p a { color: rgb(123, 123, 123); }
    .page_tit .loca2 { color: #000; }

    .sub_content { clear: both; width: 100%; height: 1100px; }
    .sub_content .inner { width: 1100px; margin: 0 auto; margin-top: 100px; }
    .join_form { width: 100%; height: 650px; }
    .join_form table { width: 800px; height: 100%; border-collapse: collapse; margin: 0 auto; }
    .join_form tr { width: 800px; height: 40px; border-top: 1px solid #ddd; }
    .join_form th { width: 150px; padding-left: 20px; }
    .join_form td { width: 500px; margin-left: 50px; padding-left: 80px; }
    .id_check { width: 100px; height: 35px; margin-left: 10px; cursor: pointer; }
    input {border: 1px solid #ddd;}
    .input_text { width: 300px; height: 35px; text-align: center; }
    .input_text:focus { border-color: #0087ab; outline: none; }

    .join_btn { display: block; margin: 0 auto; width: 150px; height: 40px; font-size: 18px; 
        background-color: #0087ab; color: #fff; margin-top: 40px; }

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
	                    <h2>회원가입</h2> 
	                </div>
	                
                 <div class="page_tit">
                     <div class="inner">
                         <h3>회원가입폼</h3>
                         <p>
                             <span><a href="${path1 }/">HOME</a></span> 
                             &nbsp;&nbsp;
                             |
                             &nbsp;&nbsp;
                             <span class="loca1">회원가입</span>
                             &nbsp;&nbsp;         
                             >
                             &nbsp;&nbsp;
                             <span class="loca2">회원가입폼</span>
                         </p>
                     </div>    
                 </div>
                    <div class="sub_content">
                        <div class="inner">
                            <form action="${path1 }/member/join.do" class="join_form" method="post" name="join_form" onsubmit="return joinCheck(this)">
                                <table>
                                    <tbody>
                                        <tr>
                                            <th>아이디</th>
                                            <td>
                                            	<c:if test="${empty uid }">
                                                <input type="text" name="u_id" id="u_id"  class="input_text" placeholder="아이디를 입력하세요." required>
                                                </c:if>
                                            	<c:if test="${!empty uid }">
                                                <input type="text" name="u_id" id="u_id" value="${uid }" class="input_text" placeholder="아이디를 입력하세요." required>
                                                </c:if>
                                                <input type="button" value="중복확인" class="id_check" onclick="idCheck()">
                                                <input type="hidden" name="uid">
                                                	<c:if test="${!empty ck }">
                                                		<input type="hidden" name="ck" value="${ck }">
                                                	</c:if>
                                                	<c:if test="${empty ck}">
                                                		<input type="hidden" name="ck" value="">
                                                	</c:if>
                                                	<c:if test="${!empty msg }">
                                                		<input type="hidden" name="msg" value="${msg }">
                                                	</c:if>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>비밀번호</th>
                                            <td><input type="password" name="u_pw" id="u_pw"  class="input_text" placeholder="비밀번호를 입력하세요." required></td>
                                        </tr>
                                        <tr>
                                            <th>비밀번호 확인</th>
                                            <td><input type="password" name="u_pw2" id="u_pw2"  class="input_text" placeholder="비밀번호를 한번 더 입력하세요." required></td>
                                        </tr>
                                        <tr>
                                            <th>이름</th>
                                            <td><input type="text" name="name" id="name" class="input_text" placeholder="이름을 입력하세요." required></td>
                                        </tr>
                                        <tr>
                                            <th>이메일</th>
                                            <td><input type="email" name="email" id="email" class="input_text" placeholder="메일아이디 @ 도메인" required></td>
                                        </tr>
                                        <tr>
                                            <th>휴대폰</th>
                                            <td><input type="tel" name="tell" id="tell" class="input_text" placeholder="휴대폰번호를 입력하세요." required></td>
                                        </tr>
                                        <tr>
                                            <th>생년월일</th>
                                            <td><input type="date" name="birth" id="birth" class="input_text" required></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <input type="submit" value="가입하기" class="join_btn">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form>
                            <script>
                            	function idCheck() {
                            		var uid = document.join_form.u_id.value;		//uid는 join_form의 u_id의 값
                            		if(uid!=""){		//uid값이 비어있지않으면
                            			location.href="${path1 }/member/idCheck.do?u_id="+uid;		//uid값을 넘겨 
                            		}
                            	}
                            </script>
                            <script>
                            	function joinCheck(f) {
                            		if(f.ck.value!="ok"){
                            			alter("이미 사용중인 아이디입니다.");
                            			return false;
                            		}
                            	}
                            </script>
                            <script>
                            if("${msg}"!=""){
                    			alert("${msg}");
                    		}
                            </script>
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