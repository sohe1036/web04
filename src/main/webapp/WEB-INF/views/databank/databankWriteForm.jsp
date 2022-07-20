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
<title>자료 등록</title>
  <!-- 웹 아이콘 XEIcon -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="${path1 }/include/common.css">
<style>
	 .content { clear: both; width: 100%; height: 900px; overflow: hidden; }
     .sub_content { clear: both; width: 100%; height: auto; }
     .content_wrap {width: 100%; margin: 0 auto;}  /*width 100%로변경*/
     .tit { border: 1px solid #000; height: 30px; }
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
    
    .page_table { margin-top: 50px; }
     .page_table .inner { width: 1120px; margin: 0 auto; margin-top: 70px; height: 500px;}
     .page_table .inner form {height: 100%; }
     .page_table .inner  table { display: table; width: 100%; text-align: center; margin: 0 auto; margin-bottom: 50px; border-top: 2px solid #1f75b0; }
     .page_table .inner  table tr { height: 60px; border-bottom: 1px solid #ddd; }
     .page_table .inner  table tr:last-child { border: 0; }
     .page_table .inner  table thead tr:first-child { background-color: #f6f6fa; }
     
      .button { float: right; margin: 25px 20px 20px 0;  color: #fff; font-size: 15px;  padding: 10px 30px; background-color: #1f75b0;  }
     .bt { margin-top: 40px; }
</style>
</head>
<body>
<div class="wrap">
<%@ include file="../include/header.jsp" %>
	 <div class="content">
	 	<div class="content_wrap">
		<%@include file="../include/side.jsp" %>
			<div class="sub_bg_menu">
                <div class="sub_bg_img">
                    <!-- 메인메뉴에 따라 이름을 바꿔주세요 -->
                    <h2>자료실</h2> 
                </div>
                <div class="sub_bg_line">
                    <div class="sub_bg_text">
                        <!-- 현재 페이지에 맞게 <b>태그를 넣어주세요 -->
                        <!-- 메뉴가 4개인 페이지는 .sub_bg_line a 스타일의 width를 25%로 줄여주세요 -->
                        <a href="notice.html">공지사항</a>
                        <a href="data.html"><b>자료실</b></a>
                        <a href="board.html">게시판</a>
                        <a href="qna.html">Q&A</a>
                    </div>
                </div>          
            </div>
			<div class="page_tit">
                 <div class="inner">
                     <h3>자료실 추가</h3>
                     <p>
                         <span><a href="${path1 }/">HOME</a></span> 
                         &nbsp;&nbsp;
                         |
                         &nbsp;&nbsp;
                         <span class="loca1">병원소식</span>
                         &nbsp;&nbsp;
                             >
                         &nbsp;&nbsp;
                         <span class="loca1">자료실</span>
                         &nbsp;&nbsp;
                         >
                         &nbsp;&nbsp;   
                         <span class="loca2">자료실 추가 </span>
                     </p>
                 </div>    
             </div>
             <div class="page_table">
                 <div class="inner"> 
					<form action="${path1 }/databank/insert.do" method="post" name="databankUpload" onsubmit="return fileCk(this)">
						<table class="table_form">
							<tbody>
								<tr>
									<th><label for="title">제목</label></th>
									<td><input class="tit" type="text" name="dtitle" id="dtitle" size="100"  placeholder="글제목 입력" required></td>
								</tr>
								<tr>
									<th><label for="content">내용</label></th>
									<td><textarea name="dcontent" id="dcontent" cols="95" rows="8"  placeholder="글 내용 입력" required></textarea></td>
								</tr>
								<tr>
									<th><label for="dposter">파일 형식</label></th>
									<td><input type="text" name="dposter" id="dposter" size="40"  value="" readonly>
											<input type="image" name="dposter2" id="proData2" />
											<input type="hidden" name="fileCheck" id="fileCheck" />
									</td>
								</tr>
								<tr>
									<th><label for="dfilename">업로드 파일</label></th>
									<td><input type="text" name="dfilename" id="dfilename" size="40" class="single100" value="" readonly>
											<button class="button" onclick="uploadFile()">자료 업로드 하기</button>
											<img src="" id="proData" />
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="submit" class="button bt" value="자료 등록">
										<input type="reset" class="button bt" value="취소">
									</td>
								</tr>	
							</tbody>
						</table>
					</form>
				</div>
			</div>		
			<script>
			function uploadFile() {
				window.open("${path1 }/databank/uploadForm.do", "dataupload", "width=400, height=300");
			}
			function fileCk(f){
        		if(f.fileCheck.value!="yes") {
        			alert("파일을 업로드해주세요.");
        			return false;
        		}
        	}
			</script>
		</div>
	</div>
<%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>