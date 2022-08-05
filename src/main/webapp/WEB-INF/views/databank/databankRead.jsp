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
<title>Insert title here</title>
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

    .page_table { width: 100%; height: 700px; margin-top: 100px; }
    .page_table .inner { width: 1120px; margin: 0 auto; }
    .page_table .detail_tb { display: table; width: 1000px; margin: 0 auto; }
    .page_table .detail_tb tr { border-bottom: 1px solid #ddd; }

    .page_table .detail_tb tr:first-child { border-top: 2px solid #1f75b0; }
    .page_table .detail_tb tr:last-child { border: 0; }
    .page_table .detail_tb th { width: 20%; font-size: 20px; height: 60px; line-height: 20px; }
    .page_table .detail_tb td input { font-size: 16px; text-align: center; }
    
    .button  { color: #fff; font-size: 15px;  padding: 10px 30px; background-color: #1f75b0; width: 160px; }
	input.btn { margin-top: 20px; }
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
	                    <h2>자료실</h2> 
	                </div>
	                <div class="sub_bg_line">
	                    <div class="sub_bg_text">
	                        <!-- 현재 페이지에 맞게 <b>태그를 넣어주세요 -->
	                        <!-- 메뉴가 4개인 페이지는 .sub_bg_line a 스타일의 width를 25%로 줄여주세요 -->
	                         <a href="${path1 }/databank/list.do"><b>자료실</b></a>
	                    	 <a href="${path1 }/board/list.do">게시판</a>
	                    	 <a href="${path1 }/board/list.do">Q&A</a>
	                    </div>
	                </div>          
	            </div>
               <div class="page_tit">
                   <div class="inner">
                       <h3>자료실</h3>
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
                           <span class="loca2">자료실 상세</span>
                       </p>
                   </div>    
               </div>
               <div class="page_table">
                   <div class="inner">        
                       <form action="${path1 }/databank/update.do" method="post" name="databankUpload" onsubmit="return fileCk(this)">              
	                       <table class="detail_tb">
	                           <tbody>
	                               <tr>
										<th><label for="">번호</label></th>
										<td>
											<c:if test="${sid=='admin' }">
											<input type="text" name="datano" id="datano" size="100"  placeholder="" value="${databank.datano }" readonly>
											</c:if>
											<c:if test="${sid!='admin' }">
												<span>${databank.datano }</span>						
											</c:if>
										</td>
									</tr>
	                               <tr>
	                                   <th><label for="dtitle">제목</label></th>
	                                   <td>
											<c:if test="${sid=='admin' }">
												<input type="text" name="dtitle" id="dtitle" size="100" value="${databank.dtitle }" required>
											</c:if>
											<c:if test="${sid!='admin' }">
												<span>${databank.dtitle }</span>
											</c:if>
										</td>
	                               </tr>
	                               <tr>
	                                   <th><label for="dcontent">내용</label></th>
	                                   <td>
											<c:if test="${sid=='admin' }">
											<textarea name="dcontent" id="dcontent" cols="100" rows="8" required>${databank.dcontent }</textarea>
											</c:if>
											<c:if test="${sid!='admin' }">
												<p>${databank.dcontent }</p>						
											</c:if>
										</td>
	                               </tr>
	                               <tr>
										<th><label for="dposter">파일 형태</label></th>
										<td>
											<c:if test="${sid=='admin' }">
											<input type="text" name="dposter" id="dposter" size="40" value="${databank.dposter }" readonly>
											</c:if>
											<c:if test="${sid!='admin' }">
												<c:set var="filetype" value="${databank.dposter }" />
												<c:if test="${filetype=='gif' }"><img src="${path1 }/data/img.png" alt="파일타입"/></c:if>				
												<c:if test="${filetype=='jpg' }"><img src="${path1 }/data/img.png" alt="파일타입"/></c:if>
												<c:if test="${filetype=='png' }"><img src="${path1 }/data/img.png" alt="파일타입"/></c:if>
												<c:if test="${filetype=='hwp' }"><img src="${path1 }/data/hwp.png" alt="파일타입"/></c:if>
												<c:if test="${filetype=='doc' }"><img src="${path1 }/data/doc.png" alt="파일타입"/></c:if>
												<c:if test="${filetype=='pdf' }"><img src="${path1 }/data/pdf.png" alt="파일타입"/></c:if>
												<c:if test="${filetype=='xls' }"><img src="${path1 }/data/xls.png" alt="파일타입"/></c:if>
												<c:if test="${filetype=='ppt' }"><img src="${path1 }/data/ppt.png" alt="파일타입"/></c:if>
												<c:if test="${filetype=='pptx' }"><img src="${path1 }/data/ppt.png" alt="파일타입"/></c:if>
												<c:if test="${empty filetype}"><img src="${path1 }/data/no.png" alt="파일타입"/></c:if>
											</c:if>
										</td>
									</tr>
		                            <tr>
	                                   <th><label for="dfilename">첨부 파일</label></th>
	                                   <td>
											<c:if test="${sid=='admin' }">
											<input type="text" name="dfilename" id="dfilename" value="${databank.dfilename }" required>
											<button class="button btn" onclick="uploadFile()">첨부 파일 변경 </button><br>
											<input type="hidden" name="fileCheck" id="fileCheck" />
											</c:if>
											<a href="${path1 }/resources/upload/${databank.dfilename }">${databank.dfilename }</a>						
										</td>
	                               </tr>
	                               <tr>
	                                   <th><label for="regdate">등록일</label></th>
										<td>
												<fmt:parseDate value="${databank.regdate}" var="dateVal" pattern="yyyy-MM-dd" />
												<fmt:formatDate value="${dateVal }" pattern="yyyy-MM-dd" />
										</td>
	                               </tr> 
	                               <tr>
	                               		<td colspan="2">
	                               		<c:if test="${sid=='admin' }">
	                               			<input type="submit" value="수정" class="button btn">&nbsp;&nbsp;
	                               			<a href="${path1 }/databank/delete.do?datano=${databank.datano }" class="button">자료 삭제</a>&nbsp;&nbsp;
	                               			<a href="${path1 }/databank/list.do" class="button">자료 목록</a>
	                               		</c:if>	
	                               		</td>
	                               </tr>       
	                           </tbody>                     
	                        </table>
	                    </form>  
	                    <script>
	                    	function uploadFile() {
	                    		window.open("${path1}/databank/uploadForm.do", "dataupload", "width=400, height=300" );
	                    		return false;
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
            </div>    
		</div>
	</div>
<%@include file="../include/footer.jsp" %>
</div>
</body>
</html>