<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- 웹 아이콘 XEIcon -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="${path1 }/include/common.css">
<style>
 /*서브메뉴*/
     .content { clear: both; width: 100%; height: auto; overflow: hidden; }
     .sub_content { clear: both; width: 100%; height: auto; }
     .content_wrap {width: 100%; margin: 0 auto;}  /*width 100%로변경*/

     /*수정한부분*/
     .sub_bg_img{height: 142px; background-image: url("../img/bg_sub_top1.jpg");}
     .sub_bg_menu h2 {width: 1120px; margin: 0 auto; line-height: 142px; color: #fff; font-size: 38px;font-weight: 300;}
     .sub_bg_line {height: 75px;background: #327cb6;}
     .sub_bg_text {width: 1120px; margin: 0 auto; height: 100%; text-align: center;}
     .sub_bg_line a {font-size: 18px; color:#addcf6; line-height: 90px; width: 33.3%; height: 20px; display: block; float:left; display: block;}  
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
    
     .page_table .inner { width: 1120px; margin: 0 auto; margin-top: 70px; }
     .page_table .inner form { display: block; text-align: center; height: 50px; position: relative; margin-bottom: 20px; }
     .page_table .searchCondition { width: 120px; outline: 0; border: 0; font-size: 18px; text-align: center; vertical-align: middle; margin-left: 5px; }
     .page_table .searchKeyword { width: 390px; font-size: 18px; height: 45px; vertical-align: middle; }
     .page_table .btn { width: 50px; background: url(../img/btn_search.png); background-repeat: no-repeat; background-position: center;
         vertical-align: middle; height: 50px; cursor: pointer; }
     .page_table .search_tb { display: inline-block; margin: 0 auto; border: 1px solid #dfe5ed; border-radius: 38px; }

     .button { float: right; margin: 10px 20px 30px 0; }
     .button a { color: #fff; font-size: 15px;  padding: 10px 30px; background-color: #1f75b0; }

     .page_table .inner > table { display: table; width: 100%; text-align: center; margin: 0 auto; margin-bottom: 50px; border-top: 2px solid #1f75b0; }
     .page_table .inner > table tr { height: 60px; border-bottom: 1px solid #ddd; }
     .page_table .inner > table thead tr:first-child { background-color: #f6f6fa; }
     .page_table .th1, .page_table .th3 { width: 100px; }
     .page_table .th2 { width: 500px; }
     .page_table .th4 {width: 150px;}

     .table_btn { width: 100%; height: 55px; margin-bottom: 20px; }
     .table_btn ul { overflow: hidden; display: table; text-align: center; margin: 0 auto; }
     .table_btn li { float: left; }
     .table_btn li a { display: inline-block; width: 46px; height: 46px; font-size: 15px; line-height: 46px; 
         border: 1px solid #ddd; border-collapse: collapse; }
     .table_btn li a:hover { background-color: #1f75b0; color: #fff; }
     

</style>
<title>글 목록</title>
</head>
<body>
<div class="wrap">
	<%@include file="../include/header.jsp" %>
	 <div class="content">
	 	<div class="content_wrap">
		<%@include file="../include/side.jsp" %>
			<div class="sub_bg_menu">
                <div class="sub_bg_img">
                    <!-- 메인메뉴에 따라 이름을 바꿔주세요 -->
                    <h2>게시판</h2> 
                </div>
                <div class="sub_bg_line">
                    <div class="sub_bg_text">
                        <!-- 현재 페이지에 맞게 <b>태그를 넣어주세요 -->
                        <!-- 메뉴가 4개인 페이지는 .sub_bg_line a 스타일의 width를 25%로 줄여주세요 -->
                        <a href="${path1 }/databank/list.do">자료실</a>
	                        <a href="${path1 }/board/list.do"><b>게시판</b></a>
	                        <a href="${path1 }/board/list.do">Q&A</a>
                    </div>
                </div>          
            </div>
			<div class="page_tit">
                 <div class="inner">
                     <h3>게시판</h3>
                     <p>
                         <span><a href="${path1 }/">HOME</a></span> 
                         &nbsp;&nbsp;
                         |
                         &nbsp;&nbsp;
                         <span class="loca1">병원소식</span>
                         &nbsp;&nbsp;
                         >
                         &nbsp;&nbsp;   
                         <span class="loca2">게시판 </span>
                     </p>
                 </div>    
             </div>
	         <div class="page_table">
                 <div class="inner">                            
                     <form method="post" action="">
                         <table class="search_tb" id="search_tb">
                             <tr>
                                 <td>
                                     <select name="searchCondition" class="searchCondition" >
                                         <option value="title">제목</option>
                                         <option value="content">내용</option>
                                     </select>
                                     <input type="text" name="searchKeyword" class="searchKeyword" placeholder="키워드를 입력하세요.">
                                     <input type="submit" value="" class="btn">
                                 </td>
                             </tr>
                         </table>
                     </form>
                     <c:if test="${sid=='admin' }">
                     <div class="button">
                         <a href="${path1 }/board/write_form.do">글 추가</a>
                     </div>
                     </c:if>
					<table>
						<thead>
		                    <tr>
		                        <th class="th1">NO</th>
		                        <th class="th2">제목</th>
		                        <th class="th3">작성자</th>
		                        <th class="th4">작성일</th>
		                    </tr>
		                </thead>
						<tbody>
						<c:forEach items="${boardList }" var="board">
							<tr>
								<td>${board.seq }</td>
								<td><a href="${path1 }/board/read.do?seq=${board.seq }">${board.title }</a></td>
								<td>${board.name }</td>
								<td><fmt:formatDate value="${board.regdate}" pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>	
						</tbody>
					</table>
					<div class="table_btn">
		                 <ul>
		                     <li><a href=""><i class="xi-angle-left"></i></a></li>
		                     <li><a href="">1</a></li>
		                     <li><a href="">2</a></li>
		                     <li><a href="">3</a></li>
		                     <li><a href="">4</a></li>
		                     <li><a href="">5</a></li>
		                     <li><a href=""><i class="xi-angle-right"></i></a></li>
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