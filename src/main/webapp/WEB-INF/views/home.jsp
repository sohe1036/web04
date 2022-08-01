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
    <!--<link rel="stylesheet" href="./css/slick-theme.css">-->
    <!--<link rel="stylesheet" href="./css/slick.css">-->
    <link rel="stylesheet" href="./css/slickstyle.css">
    <script src="./js/slick.js"></script>
<style>
        /*초기화*/
        *{margin: 0%; padding: 0%; text-decoration: none; list-style: none;}
        body, html{ width: 100%; overflow-x: hidden; font-family: 'HallymGothic-Regular'; }
        ul {list-style: none;}
        input, button{outline: 0; border: 0;}
        a {text-decoration: none; color: #333;}
        table, .table{display: table; border-collapse:collapse;}
        tr, .tr { display: table-row;}
        .wrap {clear: both; width: 100%;}
        #header {width:100%;}

        /*헤더*/
        /* logo */
        .logo {float: left; padding-top: 25px;}
        /* tnb */
        .tnb {padding-top: 27px;}
        .login {float: right; border:2px solid#eee; border-radius: 46px; padding: 10px; font-size: 14px; padding-right: 25px; padding-left: 25px;}
        .login .sign::before {content: ""; background: url("./img/icon_login.png"); width: 15px; height: 18px;display: inline-block; margin-right: 10px; vertical-align: -3px;}
        .line {font-size: 12px; vertical-align: 2px; color: #ddd; padding: 5px;}
        .login span a {color: #000; font-weight: 500; font-size: 14px; font-family: 'Noto Sans KR', sans-serif;}
        .login span:hover a{color:blue;}
        /* gnb */
        .top_hd_wrap {height: 50px; clear: both;}
        .top_nav_wrap {height: 100px; width: 1400px; margin: 0 auto;}
        .gnb{height: 70px; clear: both; width: 100%; border-top: 1px solid #ddd;background-color: #fbfbfb; z-index: 99; border-bottom: 1px solid #ddd; }
        .gnb_wrap {margin: 0 auto; height: 300px; z-index: 1;}
        .background {clear: both;width: 100%; position:absolute; width: 1920px; background-color: #fff; height:0; top:171px; z-index:1; left: 0;} 
        .main_ul {margin: 0 auto; height: 70px; width: 1400px;}
        .main_ul .mainmenu {margin: 0 auto; position: relative; width: 16.66%; height: 100%; display: block; float:left; box-sizing: border-box;}
        .mainmenu>a{font-size: 18px; color: #222222; line-height: 70px; display: block; text-align: center; border-left: 1px solid #ddd; font-family: 'Noto Sans KR', sans-serif; font-weight: 400;}
        .mainmenu:hover>a{background-color: rgb(31, 117, 176); color: #fff;}
        .mainmenu:hover .sub_ul {background-color: rgb(244,248,251);}
        
        .sub_menu {width: 1400px; margin: 0 auto;}
        .sub_ul {float:left;width:100%;height: 0px; border-left: 1px solid#ddd; box-sizing: border-box; position: absolute;}
        .sub_ul1 {border-right: 1px solid#ddd;} 
        .submenu {width: 100%; line-height: 0px;}
        .sub_ul a:hover {text-decoration: underline; color: rgb(31, 117, 176);}
        .submenu a {font-size: 16px; padding-left: 14%; display: none; color:#666}
        .sub_ul li:first-child a {margin-top: 15px;}

        .main_ul:hover .sub_ul {height: 200px; transition-duration: 0.5s; z-index: 2;}
        .main_ul:hover .background {height: 200px; transition-duration: 0.5s; box-shadow :  0 8px 8px -6px rgb(73, 72, 72);}
        .main_ul:hover .submenu {line-height: 40px; transition-duration: 0.5s;}
        .main_ul:hover .sub_ul a {display: block;}

        .sm_last, .mm_last { border-right: 1px solid #ddd;}

        
        .content { clear: both; width: 100%; height: auto; overflow: hidden; }
        .content_wrap {width: 1400px; margin: 0 auto;}

        /*사이드*/
        .right_btn {width: 65px; height: 200px; position:fixed; right: 55px; bottom: 45px; z-index: 999;}
        .right_btn img {width: 90%; padding-bottom: 11px;}

        /* 비주얼슬라이더*/
        #ic {width:100%; overflow: hidden; position: relative; }
        .img_box{ width:100%;}
        .img_box li { float: left; width: 25%;  }
        .imb_box li a {display: block;}
        .img_box li a img{display: block; width: 100%; height: 560px;}
        

         /* 게시판 스타일-의료진 예약 */
        .medical li{display: block; width: 300px; height: 84px; border: 1px solid #ddd; margin: 0 auto; float: left; text-align: center; font-size: 24px; }
        .medical a{color: #0087ab; line-height: 80px;}
        .medical_box{width: 1350px; margin: 0 auto; height: 400px; margin-top: 40px; margin-bottom: 100px;   border:1px solid #0087ab ; background-image: url("./img/bg_main1.jpg");}
        .medical_leftbox{width: 65%; height: 100%; background-color: rgb(255, 255, 255);}
        .main {display: block;  width: 400px;}
        .medical_title{width: 100%; margin-left: 60px;font-size: 30px; color: #0087ab; padding-top: 15px; }
        .medical_comment{width: 100%; margin-left: 60px;font-size: 26px; color: #000; padding-top: 15px;}
        .medical{padding-left: 60px; padding-top: 20px;}
        .medical li:hover{background-color: #0087ab; }
        .medical li:hover a{color: #fff;}
        .backcolor{position: absolute;left: 0; width: 1920px; top: 750px; height: 520px; background-color: #f6f6fa; z-index: -1;}

         /*공지사항, 게시판*/
        .news_section { clear: both; width: 1200px; height: 450px; margin: 0 auto; }
        .notice { float: left; width: 700px; height: 100%; }
        .board { float: left; width: 500px; height: 100%; }
        .notice .box { width: 700px; height: 400px; border:1px solid #ddd; margin: 0 auto;}
        .board .box { width: 500px; height: 400px; border:1px solid #ddd; margin: 0 auto; background: url(./img/board_bg2.jpg); 
            background-position: center; background-repeat: no-repeat; background-size: 500px 400px; }
        .box h2 { text-align: center; padding: 50px; }
        .board h2 { color: #fff; text-shadow: 0.5px 0.5px 0.5px #000; }
        .notice .table { width: 650px; padding: 0 25px; height: 220px; }    
        .board .table { width: 450px; padding: 0 25px; height: 220px; text-align: center; } 
        .notice li { height: 60px;  width: 600px; line-height: 60px; margin: 0 auto; }
        .notice li a { float: left; margin-left: 40px;}
        .notice li span { float: right; margin-right: 20px; color: #999; }
        .board ul { margin: 0 auto; }
        .notice ul { margin: 0 auto; }
        .board li { height: 60px; width: 400px; line-height: 60px; margin: 0 auto; }
        .board li a { color: #fff; }
        .notice li:first-child { border-top: 1px solid #333; border-collapse: collapse;}
        .table li { border-bottom: 1px solid #ddd; border-collapse: collapse;}
        .notice li:last-child { border-bottom: 1px solid #333; border-collapse: collapse;}
        .board li:first-child { border-top: 1px solid #ddd; border-collapse: collapse; text-shadow: 0.5px 0.5px 0.5px #000; }

        hr { border: 0; border-top: 1px solid rgb(200, 200, 200); }

        /*오시는길, 진료시간*/
        .info_section { clear: both; width: 1200px; height: 450px; margin: 0 auto;  margin-top: 70px; }
        .map { float: left; width: 650px; height: 100%;  }
        .time { float: left; width: 550px; height: 100%; }
        .map .box { width: 600px;  height: 400px; border:1px solid #ddd; margin: 0 auto; }
        .time .box { width: 500px;  height: 400px; border:1px solid #ddd; margin: 0 auto; }
        .map h2, .time h2 { text-align: center; padding: 40px; }
        .map .box i {  text-align: center; }
        .map .box span { display: block; text-align: center; }
        .map .box span b { margin-right: 30px; }
        .map .box  ul { width: 400px; height: 100px; line-height: 100px; margin: 0 auto; margin-top: 30px;  }
        .map .box  ul li { float: left; width: 198px; text-align: center; background-color: #0087ab; border: 1px solid #fff; }
        .map .box  ul li a { color: #fff; font-size: 18px; }
        .time .table { width: 400px; padding: 0 25px; height: 300px; margin: 0 auto; } 
        .time .table li { height: 50px; line-height: 50px; text-align: center; }
        .time .table li:last-child { border: none; height: 80px; line-height: 80px; }
        .call { font-size: 40px; font-weight: 520; color: #0087ab; }
        .time b { padding-right: 30px; color: #0087ab; }   
        .xi-whatsapp { font-size: 40px; }

        /*푸터 sns*/
        .ft_line {width: 100%; height: 45px; background-color: #327cb6; padding: 18px; color: #fff; font-size: 16px;}
        .ft_line p {float:left; padding-right: 10px; margin-top: 12px; padding-left: 11%; font-weight: 500;}
        .ft_link1 ,.ft_link2,.ft_link3,.ft_link4,.ft_link5,.ft_link6 {display: inline-block; width: 45px; height: 45px; 
            margin: 0 10px;vertical-align: middle; background-size: cover}
        .ft_link1 {background-image:url("./img/icon_quick_link1.png")}
        .ft_link2 {background-image:url("./img/icon_quick_link2.png")}
        .ft_link3 {background-image:url("./img/icon_quick_link3.png")}
        .ft_link4 {background-image:url("./img/icon_quick_link4.png")}
        .ft_link5 {background-image:url("./img/icon_quick_link5.png")}
        .ft_link6 {background-image:url("./img/icon_quick_link6.png")}


        /*푸터*/
        #ft { clear: both; width: 100%; height: 300px; }
        .fnb { clear: both; width: 100%; height: 20px; border: 1px solid #ddd; padding: 10px 0; }
        .fnb .inner { width: 1400px; height: 100%; margin-left: 30px; margin: 0 auto; }
        .fnb span { margin: 0 10px; font-size: 13px; }
        .fnb span:after { content: "|"; padding-left: 20px; color: #ddd; }
        .fnb span:last-child:after { content: ""; }
        .snb { clear: both; width: 100%; height: 100px; padding: 20px 10px; }
        .snb .inner{ width: 1400px; height: 100%; margin-left: 40px; margin: 0 auto; }
        .copy_wrap { float: left; }
        .ft_logo { float: right; }
        .copy_wrap b { display: block; margin-bottom: 10px; }
        .copy_wrap p, .copy_wrap span { font-size: 13px; padding-right: 10px; color: #666; }
        .copy { margin-top: 10px; color: #444; }
        
 
    </style>
	<title>Home</title>
</head>
<body>
<div class="wrap">
	<header class="header" id="header">
	<div class="" id="header_wrap">
              <div class="top_nav_wrap">
                  <div class="logo">
                      <a href="${path1 }/"><img src="./img/logo_brand.png" alt="로고"></a> 
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
                               <li class="mainmenu"><a href="${path1 }/menu/intro.do">병원소개</a>
                                  <ul class="sub_ul">
                                      <li class="submenu"><a href="intro.jsp">병원안내</a></li>
                                      <li class="submenu"><a href="drintro.jsp">의료진 소개</a></li>
                                      <li class="submenu"><a href="map.jsp">오시는 길</a></li>
                                  </ul>
                              </li>   
                              <li class="mainmenu"><a href="info.jsp">진료안내</a>
                                  <ul class="sub_ul">
                                      <li class="submenu"><a href="info.jsp">진료안내</a></li>
                                      <li class="submenu"><a href="${path1 }/reserve/reserveForm.do">진료예약</a></li>
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
                                     <!--  <li class="submenu"><a href="notice.jsp">공지사항</a></li> -->
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
        <div class="content">
            <div id="ic">
                <ul class="img_box">
                    <li>
                        <a href="">
                            <img src="./img/slide01.jpg" alt="의료1" class="inc">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/slide02.jpg" alt="의료2" class="inc">
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/slide03.jpg" alt="의료3" class="inc">
                        </a>   
                    </li>
                </ul>
    
                <button id="play_btn" class="play_btn" ></button>
                <!-- <div class="btn_group">
                    <button class="prev_btn"><i class="xi-arrow-left"></i></button>
                    <button class="next_btn"><i class="xi-arrow-right"></i></button>
                </div> -->
                <script>
                    $(function(){
                        var sw = true;
                        $(".img_box").slick({autoplay: true, autoplaySpeed: 3000});
                        $("#play_btn").click(function(){
                            if(sw){
                                $("#play_btn").addClass("on");
                                $(".img_box").slick("slickPause");
                            } else {
                                $("#play_btn").removeClass("on");
                                $(".img_box").slick("slickPlay");
                            }
                            sw= !sw;
                        });
                    });	
                </script>
            </div>
            <div class="content_wrap"> 
                <div class="right_btn">
                   <a href=""><img src="./img/btn-calling.png" alt=""></a>
                   <a href=""><img src="./img/btn-chat-kakao.png" alt=""></a>
                   <a href="#header_wrap"><img src="./img/btn_top.png" alt=""></a>
                </div>   
                <div class="backcolor"></div>
                    <div class="medical_box">
                        <div class="medical_leftbox">
                            <div class="medical_title"><h2>처음 오셨나요?</h2></div>
                            <div class="medical_comment"><p>코, 목, 귀 질환 증상에 따른 알맞은 치료로<br>
                                빠른 회복을 돕겠습니다.<p></div>
                            <ul class="medical">
                            <!--<img src="./img/bg_main1.jpg" alt="" class="main"> -->
                            <li><a href="">의료진소개</a></li>
                            <li><a href="">진료안내</a></li>
                            <li><a href="">진료예약</a></li>
                            <li><a href="news.html#qna">진료상담</a></li>     
                            </ul>
                        </div>
       			    </div>
                <div class="news_section">
                    <section class="notice">
                        <div class="box">
                            <h2 class="title"><a href="">공지사항</a></h2>
                            <ul class="table">
                                <li>
                                    <a href="">공지 1 타이틀입니다.</a>
                                    <span>2022.06.15</span>
                                </li>
                                <li>
                                    <a href="">공지 2 타이틀입니다.</a>
                                    <span>2022.06.15</span>
                                </li>
                                <li>
                                    <a href="">공지 3 타이틀입니다.</a>
                                    <span>2022.06.15</span>
                                </li>
                                <li>
                                    <a href="">공지 4 타이틀입니다.</a>
                                    <span>2022.06.15</span>
                                </li>
                            </ul>
                        </div>
                    </section>
                    <section class="board">
                        <div class="box">
                            <h2 class="title"><a href="">게시판</a></h2>
                            <ul class="table">
                                <li>
                                    <a href="">게시판 1 타이틀입니다.</a>
                                </li>
                                <li>
                                    <a href="">게시판 2 타이틀입니다.</a>
                                </li>
                                <li>
                                    <a href="">게시판 3 타이틀입니다.</a>
                                </li>
                                <li>
                                    <a href="">게시판 4 타이틀입니다.</a>
                                </li>
                            </ul>    
                        </div>
                    </section>
                </div>
                <hr>
                <div class="info_section">
                    <section class="map">
                        <div class="box">
                            <h2 class="title">
                                <i class="xi-map-o"></i>
                                <a href="">
                                    &nbsp;찾아오시는 길</a>
                            </h2>
                            <span><b>주소</b>김포시 김포한강4로 113 신한프라자 402호</span> 
                            <ul>
                                <li><a href=""><i class="xi-bus"></i>버스</a></li>
                                <li><a href=""><i class="xi-subway"></i>지하철</a></li>
                                <li><a href=""><i class="xi-park"></i>주차안내</a></li>
                                <li><a href=""><i class="xi-maker"></i>지도</a></li>
                            </ul>
                        </div>
                    </section>
                    <section class="time">
                        <div class="box">
                            <h2 class="title">
                                <i class="xi-time-o"></i>
                                <a href="">
                                    &nbsp;진료시간</a>
                            </h2>
                            <ul class="table">
                                <li>
                                    <span><b>평일 진료</b>09:00~18:30
                                    </span>
                                </li>
                                <li>
                                    <span><b>점심시간</b>13:00~14:00
                                    </span>
                                </li>
                                <li>
                                    <span><b>토요일 진료</b>09:00~13:00
                                    </span>
                                </li>
                                <li>
                                    <span><b>공휴일</b>09:00~13:00(전화문의)
                                    </span>
                                </li>
                                <li>
                                    <span class="call">031.992.0083</span>&nbsp;
                                    <i class="xi-whatsapp"></i>
                                </li>
                            </ul>
                        </div>
                    </section>
                </div>
            </div>                
        </div>
        <footer id="ft">
            <div class="ftwrap">
                <div class="ft_line">
                    <p>김포아산안과 SNS</p>
                    <a href="" class="ft_link1"></a>
                    <a href="" class="ft_link2"></a>
                    <a href="" class="ft_link3"></a>
                    <a href="" class="ft_link4"></a>
                    <a href="" class="ft_link5"></a>
                    <a href="" class="ft_link6"></a>
                </div>      
                <div class="fnb">
                    <div class="inner">
                        <span><a href="">이용약관</a></span>
                        <span><a href="">개인정보처리방침</a></span>
                        <span><a href="">환자의 권리와 의무</a></span>
                        <span><a href="">비급여안내</a></span>
                    </div>
                </div>
                <div class="snb">
                    <div class="inner">
                        <div class="copy_wrap">
                            <b>아산안과</b>
                            <p>주소 : 경기도 김포시 김포한강4로 113, 402호(장기동)
                                신한프라자(4층)</p>
                            <span>대표자 : 남윤호</span>
                            <span>사업자등록번호 : 454-95-00993</span>
                            <span>대표전화 : T. 031)992-0083 F.031)992-0096</span>
                            <p class="copy">COPYRIGHT© 2021 ASAN EYE HOSPITAL. ALL RIGHT RESERVED.</p>
                        </div>
                        <div class="ft_logo">
                            <img src="./img/logo2.png" alt="ft_logo">
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</body>
</html>