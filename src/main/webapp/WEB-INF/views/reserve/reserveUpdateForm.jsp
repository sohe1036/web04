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
<title>예약확인페이지</title>
 <link rel="stylesheet" href="${path1 }/include/common.css"> 
<style type="text/css">
	.content{clear:both; width: 100%;}
	.reserveRead{width: 1200px; margin: 0 auto;}
	
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


</head>
<body>
	<div class="wrap">
		<c:import url="../include/header.jsp"></c:import>
		<div class="content">
			<div class="reserveRead">
				<h2>예약수정</h2>
				<form method="post" action="${path1 }/reserve/reserveUpdate.do">
                 <table>
                    <tbody>
                    <tr>
                        <th scope="row">질환분야</th>
                        <td>
                            <select name="treat" required>
                                <option>::주 병명::</option>
                                <option value="백내장"<c:if test="${reserve.treat == '백내장'}">selected</c:if>>::백내장::</option>
                                <option value="녹내장"<c:if test="${reserve.treat == '녹내장'}">selected</c:if>>::녹내장::</option>
                                <option value="당뇨망막병증"<c:if test="${reserve.treat == '당뇨망막병증'}">selected</c:if>>::당뇨망막병증::</option>
                                <option value="시력검사"<c:if test="${reserve.treat == '시력검사'}">selected</c:if>>::시력검사::</option>
                                <option value="소아시력검사"<c:if test="${reserve.treat == '소아시력검사'}">selected</c:if>>::소아시력검사::</option>
                                <option value="기타"<c:if test="${reserve.treat == '기타'}">selected</c:if>>::기타::</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">담당의료진</th>
                        <td>
                            <select name="doctor" required>
                                <option value="">::선택::</option>
                                <option value="남윤호"<c:if test="${reserve.doctor == '남윤호'}">selected</c:if>>::남윤호 원장::</option>
                                <option value="성경림"<c:if test="${reserve.doctor == '성경림'}">selected</c:if>>::성경림 원장::</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">이름</th>
                        <td>
                          <input type="text" class="inputtext" name="rname" id="rname" value="${reserve.rname }" required>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">생년월일</th>
                        <td>
                            <input type="text"value="${reserve.birth }" class="inputtext" name="birth" id="birth" required>
                            <span>예 1997-09-04</span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">휴대전화</th>
                        <td>
                          <span class="span phone">
                           <span class="cell"></span>
                         	<input type="tel" name="phone" id="phone" value="${reserve.phone }" style="width: 250px; height: 38px; border: 1px solid #ddd;" required/>
                          </span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">희망예약일</th>
                            <td class="maincalWarp">
                                <div id="cal">
                                	<input type="date" name="rdate" id="rdate" value="${reserve.rdate }" required>
                                </div>
                                <div id="calWrap">
                                    <p class="reservtit">
                                        <label for="lab_tit">진료시간을 선택하세요.</label>
                                        <select title="진료시간 선택" name="time" required>
                                        	<option>진료시간 선택</option>
                                            <option value="오전 09:00"<c:if test="${reserve.time == '오전 09:00'}">selected</c:if>>오전 09:00</option>
                                            <option value="오전 10:00"<c:if test="${reserve.time == '오전 10:00'}">selected</c:if>>오전 10:00</option>
                                            <option value="오전 11:00"<c:if test="${reserve.time == '오전 11:00'}">selected</c:if>>오전 11:00</option>
                                            <option value="오후 01:00"<c:if test="${reserve.time == '오후 01:00'}">selected</c:if>>오후 01:00</option>
                                            <option value="오후 02:00"<c:if test="${reserve.time == '오후 02:00'}">selected</c:if>>오후 02:00</option>
                                            <option value="오후 03:00"<c:if test="${reserve.time == '오후 03:00'}">selected</c:if>>오후 03:00</option>
                                            <option value="오후 04:00"<c:if test="${reserve.time == '오후 04:00'}">selected</c:if>>오후 04:00</option>
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
                                <textarea name="memo" cols="125" rows="5">${reserve.memo }</textarea>
                                <input type="hidden" name="rno" value="${reserve.rno }"/>
                            </td>
                    </tr>
                    <tr>
                    	<td colspan="2">
                    		<input type="submit" class="button1" value="수정">
                    		<input type="reset" class="button0" value="취소">
                    	</td>
                    </tr>
                </tbody>
                </table> 
				</form>	
			</div>
		</div>
		<c:import url="../include/footer.jsp"></c:import>
	</div>	
</body>
</html>