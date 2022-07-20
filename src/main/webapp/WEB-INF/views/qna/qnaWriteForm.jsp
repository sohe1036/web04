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
<style>
/*서브메뉴*/
    .content { clear: both; width: 100%; height: auto; overflow: hidden; }
    .sub_content { clear: both; width: 100%; height: auto; }
    .content_wrap {width: 100%; margin: 0 auto;}
    input { border: 1px solid #ddd; width: 380px; height: 40px; }
    input:focus { border: 2.5px solid #1f75b0; }
    textarea { border: 1px solid #ddd; }
    textarea:focus { outline-color: #1f75b0;}
    .file { border: 0; padding-top: 15px;}
    
        /*수정한부분*/
    .sub_bg_img{height: 142px; background-image: url("../img/bg_sub_top1.jpg");}
    .sub_bg_menu h2 {width: 1120px; margin: 0 auto; line-height: 142px; color: #fff; font-size: 38px;font-weight: 300;}
    .sub_bg_line {height: 75px;background: #327cb6;}
    .sub_bg_text {width: 1120px; margin: 0 auto; height: 100%; text-align: center;}
    .sub_bg_line a {font-size: 18px; color:#addcf6; line-height: 90px; width: 25%; height: 20px; display: block; float:left; display: block;}  
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

    .page_table { width: 100%; height: 650px; margin-top: 100px; }
    .page_table .inner { width: 1120px; margin: 0 auto; }
    .page_table .form_tb { display: table; width: 1000px; margin: 0 auto; }
    .page_table .form_tb tr { border-bottom: 1px solid #ddd; }

    .page_table .form_tb tr:first-child { border-top: 2px solid #1f75b0; }
    .page_table .form_tb tr:last-child { border: 0; }
    .page_table .form_tb th { width: 20%; font-size: 20px; height: 60px; line-height: 20px; }
    .page_table .form_tb td input { font-size: 16px; text-align: center; }
 
    .button { float: right; width: 120px; margin: 10px 20px 30px 0; color: #fff; font-size: 15px; margin-top: 30px;
        background-color: #1f75b0; }

</style>        

<title>글쓰기</title>
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
	                    <h2>Q&A</h2> 
	                </div>
	                <div class="sub_bg_line">
	                    <div class="sub_bg_text">
	                        <!-- 현재 페이지에 맞게 <b>태그를 넣어주세요 -->
	                        <!-- 메뉴가 4개인 페이지는 .sub_bg_line a 스타일의 width를 25%로 줄여주세요 -->
	                        <a href="notice.html">공지사항</a>
	                        <a href="data.html">자료실</a>
	                        <a href="board.html">게시판</a>
	                        <a href="qna.html"><b>Q&A</b></a>
	                    </div>
	                </div>          
	            </div>
                 <div class="page_tit">
                     <div class="inner">
                         <h3>문의하기</h3>
                         <p>
                             <span><a href="${path1 }/">HOME</a></span> 
                             &nbsp;&nbsp;
                             |
                             &nbsp;&nbsp;
                             <span class="loca1">병원소식</span>
                             &nbsp;&nbsp;
                             >
                             &nbsp;&nbsp;
                             <span class="loca1">Q&A</span>
                             &nbsp;&nbsp;
                             >
                             &nbsp;&nbsp;
                             <span class="loca2">문의하기</span>
                         </p>
                     </div>    
                 </div>
                 <div class="page_table">
                      <div class="inner">                            
                          <form method="post" action="${path1 }/qna/insert.do">
                              <table class="form_tb">
                                  <tbody>	
                                      <tr>
                                          <th>제목</th>
                                          <td><input type="text" name="qtitle" id="qtitle" required></td>
                                      </tr>
                                      <tr>
                                          <th>내용</th>
                                          <td>
                                              <textarea cols="100" rows="12" name="qcontent" id="qcontent" required></textarea>
                                          </td>
                                      </tr>
                                      <tr>
                                          <th>작성자</th>
                                          <td><input type="text" name="qwriter" id="qwriter" value=${sid } readonly></td>
                                      </tr>
                                      <tr>
                                          <td colspan="2">
                                              <input type="submit" value="추가" class="button">
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
	<%@include file="../include/footer.jsp" %>
</div>
</body>
