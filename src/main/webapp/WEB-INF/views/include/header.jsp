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
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="./js/jquery-1.9.1.js"></script>
<script src="./js/jquery-ui-1.9.2.custom.js"></script>

<style>

</style>
<title>헤더</title>
</head>
<body>
<header class="header" id="header">
	<div class="" id="header_wrap">
              <div class="top_nav_wrap">
                  <div class="logo">
                      <a href="${path1 }/"><img src="../img/logo_brand.png" alt="로고"></a> 
                  </div>
                  <nav class="tnb">
                      <div class="login">
                          <c:if test="${empty sid }">
                          <span class="sign">
                              <a href="${path1 }/member/loginForm.do">로그인</a>
                          </span> 
                          <span class="line">|</span>
                              <span>
                              <a href="${path1 }/member/agree.do">회원가입</a>
                          </span>
                          </c:if>  
                          <c:if test="${!empty sid }">
                          <span>${sid }님</span> 
                          <span class="line">|</span>
                          <span class="sign">
                              <a href="${path1 }/member/logout.do">로그아웃</a>
                          </span> 
                          <span class="line">|</span>
                              <span>
                              <a href="${path1 }/member/mypage.do?u_id=${sid }">마이페이지</a>
                          </span>
                          </c:if>
                      </div>  
                  </nav>
              </div>
                  <nav class="gnb" id="gnb">
                      <div class="gnb_wrap">
                          <ul class="main_ul">
                              <div class="background">
                              </div>
                              <li class="mainmenu"><a href="intro.jsp">병원소개</a>
                                  <ul class="sub_ul">
                                      <li class="submenu"><a href="intro.jsp">병원안내</a></li>
                                      <li class="submenu"><a href="drintro.jsp">의료진 소개</a></li>
                                      <li class="submenu"><a href="map.jsp">오시는 길</a></li>
                                  </ul>
                              </li>  
                              <li class="mainmenu"><a href="info.jsp">진료안내</a>
                                  <ul class="sub_ul">
                                      <li class="submenu"><a href="info.jsp">진료안내</a></li>
                                      <li class="submenu"><a href="reserve.jsp">진료예약</a></li>
                                      <li class="submenu"><a href="time.jsp">진료시간</a></li>
                                  </ul>
                              </li>  
                              <li class="mainmenu"><a href="treat1.jsp">수정체/망막질환</a>
                                  <ul class="sub_ul">
                                      <li class="submenu"><a href="treat1_sub1.jsp">백내장</a></li>
                                      <li class="submenu"><a href="treat1_sub2.jsp">녹내장</a></li>
                                      <li class="submenu"><a href="treat1_sub3.jsp">당뇨망막병증</a></li>
                                  </ul>
                              </li>  
                              <li class="mainmenu"><a href="treat2.jsp">안질환</a>
                                  <ul class="sub_ul">
                                      <li class="submenu"><a href="treat2_sub1.jsp">비문증</a></li>
                                      <li class="submenu"><a href="treat2_sub2.jsp">안구건조증</a></li>
                                      <li class="submenu"><a href="treat2_sub3.jsp">사시/약시</a></li>
                                  </ul>
                              </li>  
                              <li class="mainmenu"><a href="treat3.jsp">소아질환</a>
                                  <ul class="sub_ul">
                                      <li class="submenu"><a href="treat3_sub1.jsp">시력발달</a></li>
                                      <li class="submenu"><a href="treat3_sub2.jsp">사시/약시</a></li>
                                      <li class="submenu"><a href="treat3_sub3.jsp">드림렌즈</a></li>
                                  </ul>
                              </li>        
                              <li class="mainmenu mm_last"><a href="news.jsp">병원소식</a>
                                  <ul class="sub_ul sub_ul1">
                                      <li class="submenu"><a href="notice.jsp">공지사항</a></li>
                                      <li class="submenu"><a href="${path1 }/databank/list.do">자료실</a></li>
                                      <li class="submenu"><a href="${path1 }/board/list.do">게시판</a></li>
                                      <li class="submenu"><a href="${path1 }/qna/list.do">Q&A</a></li>
                                  </ul>
                              </li>             
                          </ul>                          
                      </div>
                  </nav>
          	</div>
		</header>
   
</body>
</html>