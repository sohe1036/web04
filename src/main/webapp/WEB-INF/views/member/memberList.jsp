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
<link rel="stylesheet" href="${path1 }/include/common.css">
<style>
 /*서브메뉴*/
     /* #header {  clear: both; position: fixed; top: 0; left: 0; width: 100%; }  */
     .page { clear:both; min-height:100vh; display:none; width: 100%;}
     .page:target { display:block; }
     .content { clear: both; width: 100%; height: auto; overflow: hidden; }
     .sub_content { clear: both; width: 100%; height: auto; }
     .content_wrap {width: 1400px; margin: 0 auto;}


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
     .page_table .btn { width: 50px; background: url(./img/btn_search.png); background-repeat: no-repeat; background-position: center;
         vertical-align: middle; height: 50px; cursor: pointer; }
     .page_table .search_tb { display: inline-block; margin: 0 auto; border: 1px solid #dfe5ed; border-radius: 38px; }


     .page_table .inner > table { display: table; width: 100%; text-align: center; margin: 0 auto; margin-bottom: 50px; border-top: 2px solid #1f75b0; }
     .page_table .inner > table tr { height: 60px; border-bottom: 1px solid #ddd; }
     .page_table .inner > table thead tr:first-child { background-color: #f6f6fa; }
     

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
			<div class="page_tit">
	             <div class="inner">
	                 <h3>공지사항</h3>
	                 <p>
	                     <span><a href="index.html">HOME</a></span>
	                     &nbsp;&nbsp;
	                     |
	                     &nbsp;&nbsp;
	                     <span class="loca1">마이페이지</span>
	                     &nbsp;&nbsp;
	                     >
	                     &nbsp;&nbsp;
	                     <span class="loca2">고객리스트</span>
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
					<table>
						<thead>
		                    <tr>
		                        <th class="th1">아이디</th>
		                        <th class="th2">이름</th>
		                        <th class="th3">이메일</th>
		                        <th class="th4">휴대폰</th>
		                        <th class="th5">생년월일</th>
		                    </tr>
		                </thead>
						<tbody>
						<c:forEach items="${memberList }" var="memList">
							<tr>
								<td>${memList.u_id }</td>
								<td>${memList.name }</td>
								<td>${memList.email }</td>
								<td>${memList.tell }</td>
								<td>${memList.birth }</td>
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