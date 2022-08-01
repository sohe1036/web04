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
<title>병원안내</title>
<link rel="stylesheet" href="${path1 }/include/common.css">   
    <style>
 
    /* 콘텐츠 스타일*/
    .content {width: 100%;}
    .content_wrap {width: 100%; margin: 0 auto;}
    hr {border: 0; border-top: 1px solid rgb(200,200,200);}

    /* 서브 */
    .sub_bg_img{height: 142px; background-image: url("./img/bg_sub_top1.jpg");}
    .sub_bg_menu h2 {width: 1120px; margin: 0 auto; line-height: 142px; color: #fff; font-size: 38px;font-weight: 300; font-family: 'Noto Sans KR', sans-serif}
    .sub_bg_line {height: 75px;background: #327cb6;}
    .sub_bg_text {width: 1120px; margin: 0 auto; height: 100%; text-align: center;}
    .sub_bg_line a {font-size: 18px; color:#addcf6; line-height: 90px; width: 33%; height: 20px; display: block; float:left; display: block; font-family: 'Noto Sans KR', sans-serif}  
    .sub_bg_text a b {color: #fff; font-weight: normal; position: relative;}         
    .sub_bg_text a b:after {content:""; background-color: #91e9ff; position: absolute; left: 0;bottom:-18px ;width: 100%; height: 10px; text-align: center;}

    .sub_top, .sub_content {width: 1120px; margin: 0 auto; margin-bottom: 50px;}
    .inner_top {width: 100%; border-bottom: 1px solid #e4e4e4; height: 110px;line-height: 130px; margin-bottom: 40px;}
    .inner_top h2 {float:left; font-size: 40px; font-weight: 400; font-family: 'Noto Sans KR', sans-serif}
    .inner_top p {float:right; font-size: 14px; line-height: 160px; font-family: 'Noto Sans KR', sans-serif}

    /*서브메뉴 이름란*/
    .page_tit { width: 100%; height: 70px; margin-top: 30px; }
    .page_tit .inner { width: 1120px; height: 100%; margin: 0 auto;  border-bottom: 1px solid #ddd; }
    .page_tit h3 { float: left; font-size: 36px; padding-top: 5px; }
    .page_tit p { float: right; font-size: 14px; line-height: 80px; color: rgb(123, 123, 123); }
    .page_tit p a { color: rgb(123, 123, 123); }
    .page_tit .loca2 { color: #000; }

    .intro_bg_img img{width: 1120px;}
    .intro_tit {text-align: center; padding-top: 60px;}
    .intro_tit h2 {color:rgb(65,105,225); font-family: 'Noto Sans KR', sans-serif; font-size: 36px; font-weight: 600; margin-bottom: 10px;}
    .intro_tit p {font-family: 'Noto Sans KR', sans-serif; font-size: 24px; font-weight: 400;}
    .intro_imgbox {text-align: center; position:relative; margin-top: 40px;}
    .intro_left_cmt {position: absolute; top:80px; left: 200px; text-align: right; }
    .intro_right_cmt {position: absolute; top:80px; right: 155px; text-align: left;}
    .intro_center_cmt {margin-bottom: 50px;}
    .intro_center_cmt , .intro_right_cmt , .intro_left_cmt {font-size: 12px;font-family: 'Noto Sans KR', sans-serif}
    .intro_center_cmt span, .intro_right_cmt span, .intro_left_cmt span {font-size: 20px; color:rgb(65, 105, 225) ;font-family: 'Noto Sans KR', sans-serif} 
    .img_cmt {position: absolute; top:52px; right: 45.3%; font-size: 14px; color: #fff; font-family: 'Noto Sans KR', sans-serif}

    </style>

</head>
<body>
<!--DOM구조설계-->    
    <div class="wrap">
        <c:import url="../include/header.jsp"></c:import>
        <article class="content">        
            <div class="sub_wrap">
                <c:import url="../include/side.jsp"></c:import>
                <div class="sub_bg_menu">
                    <div class="sub_bg_img">
                        <!-- 메인메뉴에 따라 이름을 바꿔주세요 -->
                        <h2>병원소개</h2> 
                    </div>
                    <div class="sub_bg_line">
                        <div class="sub_bg_text">
                            <!-- 현재 페이지에 맞게 <b>태그를 넣어주세요 -->
                            <!-- 메뉴가 4개인 페이지는 .sub_bg_line a 스타일의 width를 25%로 줄여주세요 -->
                            <a href="intro.html"><b>병원안내</b></a>
                            <a href="drintro.html">의료진 소개</a>
                            <a href="map.html">오시는 길</a>
                            <!-- <a href="">4번째 메뉴</a> -->
                        </div>
                    </div>
                </div>
                <div class="page_tit">
                    <div class="inner">
                        <h3>병원안내</h3>
                        <p>
                            <span><a href="index.html">HOME</a></span>
                            &nbsp;&nbsp;
                            |
                            &nbsp;&nbsp;
                            <span class="loca1">병원소개</span>
                            &nbsp;&nbsp;
                            >
                            &nbsp;&nbsp;
                            <span class="loca2">병원안내</span>
                        </p>
                    </div>    
                </div>
                <div>

                </div>
                <div class="sub_content">
                    <div class="inner">
                        <div class="intro_bg_img">
                        <img src="./img/TopBgSub0101.jpg" alt=""> 
                        </div>
                        <div class="intro_tit">
                            <h2>김포아산안과는 3가지의 신념을 갖고 있습니다.</h2>
                            <p>김포아산안과를 방문하는 모든 환자분들에게 좋은 치료가 될 수 있도록 노력하겠습니다.</p>                        
                        </div>
                        <div class="intro_imgbox">
                            <img src="./img/introimg.png" alt="">
                            <p class="intro_left_cmt">김포아산안과 POINT<br><span>환자를 먼저 생각하는 병원</span></p>
                            <p class="intro_right_cmt">김포아산안과 POINT<br><span>환자를 내 가족처럼 섬기는 병원</span></p>
                            <p class="intro_center_cmt">김포아산안과 POINT<br><span>환자 만족을 최우선으로 하는 병원</span></p>
                            <p class="img_cmt">김포아산안과의<br>신념</p>
                            <img src="./img/introimg2.png" alt="">
                        </div>
                        <div class="intro_tit">
                            <h2>김포아산안과만의 특별한 진료시스템</h2>
                            <p>안심하세요.김포아산안과가 환자 한분 한분에게 맞춤 진료를 진행하고 있습니다.</p>         
                        
                        </div>
                        <div class="intro_bg_img">
                            <img src="./img/intro_img3.png" alt="">               
                        </div>
                    </div>
                </div>
            </div>    
        </article>
        <c:import url="../include/footer.jsp"></c:import>
</body>
</html>
