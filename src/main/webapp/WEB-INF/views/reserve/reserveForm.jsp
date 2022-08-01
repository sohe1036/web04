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
 <title>진료예약</title> 
 <link rel="stylesheet" href="${path1 }/include/common.css">  
   <style>
/* 스타일 초기화 */

.clrfx::after{content:""; display: block; width: 100%; clear: both;}
.content {clear: both; width: 100%;}

/* 서브메뉴 */
.sub_bg_img{height: 142px; background-image: url("/img/sub_visual01.jpg");}
.sub_bg_menu h2 {width: 1120px; margin: 0 auto; line-height: 120px; color: #fff; font-size: 38px;font-weight: 300; font-family: 'Noto Sans KR', sans-serif}
.sub_bg_line {height: 75px;background: #327cb6;}
.sub_bg_text {width: 1120px; margin: 0 auto; height: 100%; text-align: center;}
.sub_bg_line a {font-size: 18px; color:#addcf6; line-height: 90px; width: 33%; height: 20px; display: block; float:left; display: block; font-family: 'Noto Sans KR', sans-serif}  
.sub_bg_text a b {color: #fff; font-weight: normal; position: relative;}         
.sub_bg_text a b:after {content:""; background-color: #91e9ff; position: absolute; left: 0;bottom:-18px ;width: 100%; height: 10px; text-align: center;}

.sub_top, .sub_content {width: 1120px; margin: 0 auto;}
.inner_top {width: 100%; border-bottom: 1px solid #e4e4e4; height: 110px;line-height: 130px; margin-bottom: 40px;}
.inner_top h2 {float:left; font-size: 40px; font-weight: 400; font-family: 'Noto Sans KR', sans-serif}
.inner_top p {float:right; font-size: 14px; line-height: 160px; font-family: 'Noto Sans KR', sans-serif}
.info_1-1{width: 1120px; margin: 0 auto; line-height: 76px; color: rgb(0, 0, 0); font-size: 14px;font-weight: 100; font-family: 'Noto Sans KR', sans-serif}

.sub_bg_img{height: 142px; background-image: url("./img/bg_sub_top1.jpg");}
.sub_bg_menu h2 {width: 1120px; margin: 0 auto; line-height: 142px; color: #fff; font-size: 38px;font-weight: 300;}
.sub_bg_line {height: 75px;background: #327cb6;}
.sub_bg_text {width: 1120px; margin: 0 auto; height: 100%; text-align: center;}
.sub_bg_line a {font-size: 18px; color:#addcf6; line-height: 90px; width: 33%; height: 20px; display: block; float:left; display: block;}  
.sub_bg_text a b {color: #fff; font-weight: normal; position: relative;}         
.sub_bg_text a b:after {content:""; background-color: #91e9ff; position: absolute; left: 0;bottom:-18px ;width: 100%; height: 10px; text-align: center;}

/*서브메뉴 이름란*/
.page_tit { width: 100%; height: 70px; margin-top: 30px;}
.page_tit .inner { width: 1120px; height: 100%; margin: 0 auto; border-bottom: 1px solid #ddd;  }
.page_tit h3 { float: left; font-size: 36px; padding-top: 5px; }
.page_tit p { float: right; font-size: 14px; line-height: 80px; color: rgb(123, 123, 123); }
.page_tit p a { color: rgb(123, 123, 123); }
.page_tit .loca2 { color: #000; }

/* 온라인예약 수정 */
.sub_wrap{width: 100%;}
#rsvfrm{width: 1120px;height:1440px; display: block;}
.reservediv {width: 1120px; height: auto; margin-top: 30px; border-top: 2px solid #1f75b0; display: block;}
.reservediv td select{width: 250px; vertical-align: middle;}
.reserve_wrap{width: 1130px; height: 2000px; margin: 0 auto; margin-top: 30px;}
.reserve{border-bottom: 2px solid #0087ab ; padding-bottom: 30px;}
.reserve_1 .text-1{position: relative; border-bottom: 1px solid #ddd ; color: #000; padding-bottom: 20px; font-size: 22px;}
.reserve_1 .text-2{margin: 40px 0;}

/*테이블태그 수정*/
table{display: table;   width: 100%;height: 545px; table-layout: fixed; border-collapse: collapse; border: 0;}
caption{font:0/0 a;}
label{cursor: default;}
tbody{display: table-row-group; vertical-align: middle;}
tr{width: 1120px; height: 64px; display: table-row;vertical-align: inherit;border-color: #333;}
th{width: 10%; padding: 0 20px; border-bottom: 1px solid #ddd; text-align: center;}
td{width: 915px; height: 51px; padding: 10px; border-bottom: 1px solid #ddd;  text-align: left;}
button{overflow: visible; cursor: pointer; border: 0;}
.calbody td,th{text-align: center;}
/* select문 inputtext클래스 textarea 수정 */
select, .inputtext, textarea { font:15px/1.5 "Noto Sans KR";border-radius: 0; box-sizing: border-box;-webkit-appearance: none;}
.inputtext{height: 40px; padding: 0 20px; background: #fff; box-sizing: border-box; border: 1px solid #ddd;}
select{height: 40px; border: 1px solid #ddd; padding: 0 0 0 10px; background:#fff url(/img/bg_select.gif) no-repeat 100% 50%;background-size: 13px auto; }
option{font-weight: normal; display: block; min-height: 1.2em;}


/* 달력 수정 */
.maincalWrap{ width: 912px;height: 550px; padding: 10px;}
#cal { width: 50%; float: left;}
p.calHead{padding: 20px 0; text-align: center; background: #ddd;}
.calHead button{font:0/0 a; width: 20px; height: 20px; background: none; border-top: 2px solid #000; border-right: 2px solid #000;}
.calHead strong{display: inline-block; margin: 0 auto; font-size: 24px; vertical-align: middle; color: #000;}
.calHead button.prev{transform: rotate(226deg);}
.calHead button.next{transform: rotate(45deg);}
.reservinfo{ float: left; width: 50%; padding: 30px 0 0 20px; box-sizing: border-box;}
p.reservetit{width: 426px;height:40px; display: block; margin-block-start: 1em; margin-block-end: 1em; margin-inline-start: 1em;margin-inline-end: 1em;}
.colbody{display: table-column-group;}
.reservinfo .roundbox{margin: 20px 0 0; padding: 20px; background: #fafafa; border: 1px solid #ddd; border-radius: 20px;}
.today { background-color: red;}
.today button {background-color: red;}
/* 자동입력방지,새로고침 */
input#zsfCode.inputext{border:1px solid #ddd; box-sizing: border-box; height:  40px;}
a.btn.btnReplace{text-decoration: none;}
.F5 td{float: left;}
/* 등록 취소 수정 */
.reserveft {width: 1130px;height: 52px; margin: 20px -5px 0; text-align: center;}
.reserveft-1{float: right; width: 300px; height: auto; }
.button0{display: inline-block; width: 100px;}
.button1{display: inline-block; width: 100px;}
.button0{ border: 1px solid #ddd; height: 30px; color: rgb(0, 0, 0); }
.button1{border: 1px solid #0087ab; height: 30px; color:#0087ab}
#rsvfrm{width: 1200px%;  margin:0 auto;}
</style>
<style>
    .wrap { width: 100%; }
    .wrap:after, #header:after, #content:after, #ft:after { content:""; display:block; clear:both; }   
</style>
</head>

    <body>
    <div class="wrap clrfx">
        <c:import url="../include/header.jsp"></c:import>
        <div id="content" class="content clrfx">
            <div class="sub_wrap">
                <c:import url="../include/side.jsp"></c:import>
                <div class="sub_bg_menu">
                    <div class="sub_bg_img">
                        <!-- 메인메뉴에 따라 이름을 바꿔주세요 -->
                        <h2>진료안내</h2> 
                    </div>
                    <div class="sub_bg_line">
                        <div class="sub_bg_text">
                            <!-- 현재 페이지에 맞게 <b>태그를 넣어주세요 -->
                            <!-- 메뉴가 4개인 페이지는 .sub_bg_line a 스타일의 width를 25%로 줄여주세요 -->
                            <a href="info.html">진료안내</a>
                            <a href="reserve.html"><b>온라인예약</b></a>
                            <a href="time.html">진료시간</a>
                            <!-- <a href="">4번째 메뉴</a> --> 
                        </div>
                    </div>
                    <div class="page_tit">
                        <div class="inner">
                            <h3>온라인 예약</h3>
                            <p>
                                <span><a href="${path1 }/">HOME</a></span>
                                &nbsp;&nbsp;
                                |
                                &nbsp;&nbsp;
                                <span class="loca1">진료안내</span>
                                &nbsp;&nbsp;
                                >
                                &nbsp;&nbsp;
                                <span class="loca2"><a href="${path1 }/reserve/reserveForm.do"></a> 온라인예약</span>
                            </p>
                        </div>    
                    </div>
                </div>
  
               <form name="reserveform" id="rsvfrm" method="post" action="${path1 }/reserve/reserveInsert.do" >
                <div class="reservediv">
                 <table>
                    <caption>온라인상담내용</caption>
                    <tbody>
                    <tr>
                        <th scope="row">질환분야</th>
                        <td>
                            <select name="treat" required>
                                <option>::주 병명::</option>
                                <option value="백내장">::백내장::</option>
                                <option value="녹내장">::녹내장::</option>
                                <option value="당뇨망막병증">::당뇨망막병증::</option>
                                <option value="시력검사">::시력검사::</option>
                                <option value="소아시력검사">::소아시력검사::</option>
                                <option value="기타">::기타::</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">담당의료진</th>
                        <td>
                            <select name="doctor" required>
                                <option value="">::선택::</option>
                                <option value="남윤호">::남윤호 원장::</option>
                                <option value="성경림">::성경림 원장::</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">이름</th>
                        <td>
                          <input type="text" class="inputtext" name="rname" id="rname" title="이름입력" placeholder="이름을 입력해주세요" required>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">생년월일</th>
                        <td>
                            <input type="text" placeholder="생년월일을 입력해 주세요" class="inputtext" name="birth" id="birth" required>
                            <span>예 1997-09-04</span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">휴대전화</th>
                        <td>
                          <span class="span phone">
                           <span class="cell"></span>
                         	<input type="tel" name="phone" id="phone" style="width: 250px; height: 38px; border: 1px solid #ddd;" required/>
                          </span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">희망예약일</th>
                            <td class="maincalWarp">
                                <div id="cal">
                                	<input type="date" name="rdate" id="rdate" required>
                                </div>
                                <div id="calWrap">
                                    <p class="reservtit">
                                        <label for="lab_tit">진료시간을 선택하세요.</label>
                                        <select title="진료시간 선택" name="time" required>
                                        	<option>진료시간 선택</option>
                                            <option value="오전 09:00">오전 09:00</option>
                                            <option value="오전 10:00">오전 10:00</option>
                                            <option value="오전 11:00">오전 11:00</option>
                                            <option value="오후 01:00">오후 01:00</option>
                                            <option value="오후 02:00">오후 02:00</option>
                                            <option value="오후 03:00">오후 03:00</option>
                                            <option value="오후 04:00">오후 04:00</option>
                                        </select>
                                    </p>
                                <div class="roundbox">
                                    <p>
                                        <span>
                                            <b>실시간 예약이 아닙니다</b>
                                        </span>
                                        <br>
                                    <span>
                                        <b>상담원이 전화를 드린 후 예약이 확정됩니다</b>
                                    </span>
                                    <br>
                                    <span>
                                        <b>부재중 시 아래 번호로 다시 연락 부탁드립니다.</b>
                                    </span>
                                    </p>
                                    <br>
                                    <p class="tel">
                                        <strong class="roundtel">
                                        <u>예약문의</u>
                                        </strong>
                                        <br>
                                        <p>031-992-0083<p>
                                    </p>
                                </div>
                                </div>
                            </td>
                    </tr>
                    <tr>
                        <th scope="row">메모</th>
                            <td>
                                <textarea name="memo" cols="125" rows="5"></textarea>
                            </td>
                    </tr>
                    <tr>
                    	<td colspan="2">
                    		<input type="submit" class="button1" value="예약">
                    		<input type="reset" class="button0" value="취소">
                    	</td>
                    </tr>
                </tbody>
                </table> 
                </div>
                <!-- <div class="reserveft">
                    <div class="reserveft-1">

                        <a href="reserve.html" class="button0">
                        <span>등록</span>
                        </a>
                        <a href="index.html" class="button1">
                            <span>취소</span>
                            </a>
                    </div>
                </div>       -->
            </form>
        </div>
        </div>
        </div>
  <c:import url="../include/footer.jsp"></c:import>
        </body>
            </html>