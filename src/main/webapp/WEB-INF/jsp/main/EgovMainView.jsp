<%--
  Class Name : EgovMainView.jsp 
  Description : 메인화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<title>표준프레임워크 경량환경 홈페이지 템플릿</title>
<link href="<c:url value='/'/>css/common.css" rel="stylesheet" type="text/css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
.parkfirst {
	float:left;
	margin-left:15px;
	margin-bottom:15px;    
}
</style>
<script> 
var sImgAry = new Array(); 
sImgAry[0] = "<c:url value='/images/index/100.PNG' />"; 
sImgAry[1] = "<c:url value='/images/index/200.PNG' />"; 
sImgAry[2] = "<c:url value='/images/index/300.PNG' />"; 
var sImgNo = 0; 
var xImgNo = 1; 
function changeImg() { 
	$( "#sImg" ).animate({ 
		opacity: 0.1, 
		height: "0" 
	}, 2000, function() { 
		sImgNo++; 
		if(sImgNo > sImgAry.length-1) sImgNo = 0; 
		$("#sImg").attr("src", sImgAry[sImgNo]); 
		$("#sImg").height("370px"); 
		$("#sImg").css("opacity", "1.0"); 
		setTimeout(changeImg, 2000); 
	}); 
	$( "#xImg" ).animate({ 
		opacity: 1.0, 
		marginTop: "0px", 
		height: "370px" 
	}, 2000, function() { 
		xImgNo++; 
		if(xImgNo > sImgAry.length-1) xImgNo = 0; 
		$("#xImg").attr("src", sImgAry[xImgNo]); 
		$("#xImg").height("0px"); 
		$("#xImg").css("opacity", "0.1"); 
		$("#xImg").css("margin-top", "370px"); 
	}); 
} 
</script>
</head>
<body>
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
<!-- 전체 레이어 시작 -->

<div id="wrap">
	<!-- header 시작 -->
	<div id="header_mainsize">
	    <c:import url="/EgovPageLink.do?link=main/inc/EgovIncHeader" />
	</div>
	<div id="topnavi">
	    <c:import url="/EgovPageLink.do?link=main/inc/EgovIncTopnav" />
	</div>		
	<!-- //header 끝 -->
	<!-- container 시작 -->
	<div id="main_container">
		<!-- <div class="lefttitle_image">	 -->
		<%-- <div style="position:relative;"class="lefttitle_image" onclick="changeImg()">
			   <div > <img id="sImg" src="<c:url value='/images/index/100.PNG' />" </div>
			   <div> <img id="xImg" src="<c:url value='/images/index/200.PNG' />" </div>
			   <div style="position:absolute;"> <img src="<c:url value='/images/index/300.PNG' />" </div>     
		</div> --%>
		<div class="lefttitle_image" position:relative;" onclick="changeImg()"> 
			<div style="position:absolute;">
				<img id="sImg" src="<c:url value='/images/index/100.PNG' />" style="width:392px;height:370px;"/>
			</div> 
			<div style="position:absolute;">
				<img id="xImg" src="<c:url value='/images/index/200.PNG' />" style="width:392px;height:0;opacity:0.1;margin-top:370px;"/>
			</div> 
		</div>
		
		
		<!-- code layer -->
		<div class="rightmain_wrap">			
			<div class="board_wrap">
				<!-- 공지사항 시작 -->
				<div class="notice_area">
    				<!-- //공지사항 끝 -->
    				
    				
    				<!-- 갤러리 시작 -->
    				<div class="notice_area">
    					<h3 class="notice_title"><img src="<c:url value='/images/index/img_subtitle02.gif' />" alt="갤러리" /></h3> 
    					<a href="#LINK" onclick="javascript:fn_main_headPageAction('43','cop/bbs/selectBoardList.do?bbsId=BBSMSTR_BBBBBBBBBBBB'); return false;" class="more"><img src="<c:url value='/images/index/btn_more.gif' />" alt="more" /></a>
    					<ul>
    						<c:forEach var="result" items="${galList}" varStatus="status">
                                <li>
                                    <div class="notice_lefttext">
                                        <a href="#LINK" onclick="javascript:fn_main_headPageAction('43','cop/bbs/selectBoardList.do?bbsId=BBSMSTR_BBBBBBBBBBBB'); return false;">
                                            <c:if test="${result.replyLc!=0}">
                                                <c:forEach begin="0" end="${result.replyLc}" step="1">&nbsp;</c:forEach>
                                                <img src="<c:url value='/images/reply_arrow.gif'/>" alt="reply arrow"/>
                                            </c:if>
                                            <c:choose>
                                                <c:when test="${result.isExpired=='Y' || result.useAt == 'N'}">
                                                    <c:out value="${result.nttSj}" />
                                                </c:when>
                                                <c:otherwise>
                                                    <c:out value="${result.nttSj}" />
                                                </c:otherwise>
                                            </c:choose>
                                        </a>
                                    </div>
                                    <div class="notice_righttext"><c:out value="${result.frstRegisterPnttm}"/></div>
                                </li>
                            </c:forEach>
                        <c:if test="${fn:length(result) == 0}">
                            <li>등록된 갤러리가 없습니다.</li>
                        </c:if>
    					</ul>
							
    				</div>
				</div>
				<!--  //갤러리 끝 -->			
						<div id="parkid"> 
								
									<div class="parkfirst"><a href="#" onclick="javascript:fn_main_headPageMove('21','main/sample_menu/EgovProductInfo'); return false;"><img src="<c:url value='/images/index/777.png' />" /></a></div>
									<div class="parkfirst"><a href="#" onclick="javascript:fn_main_headPageMove('21','main/sample_menu/EgovProductInfo'); return false;"><img src="<c:url value='/images/index/778.png' />" /></a></div>
								
									<div style="clear:both;"></div>

									<div class="parkfirst"><a href="#" onclick="javascript:fn_main_headPageMove('21','main/sample_menu/EgovProductInfo'); return false;"><img src="<c:url value='/images/index/779.png' />" /></a></div>
									<div class="parkfirst"><a href="#" onclick="javascript:fn_main_headPageMove('21','main/sample_menu/EgovProductInfo'); return false;"><img src="<c:url value='/images/index/800.png' />" /></a></div>
							
									<div style="clear:both;"></div>
									
									<div class="parkfirst"><a href="#" onclick="javascript:fn_main_headPageMove('21','main/sample_menu/EgovProductInfo'); return false;"><img src="<c:url value='/images/index/888.png' />" /></a></div>
									<div class="parkfirst"><a href="#" onclick="javascript:fn_main_headPageMove('21','main/sample_menu/EgovProductInfo'); return false;"><img src="<c:url value='/images/index/900.png' />" /></a></div>
							
									<div style="clear:both;"></div>
									
									<div class="parkfirst"><a href="#" onclick="javascript:fn_main_headPageMove('21','main/sample_menu/EgovProductInfo'); return false;"><img src="<c:url value='/images/index/888.png' />" /></a></div>
									<div class="parkfirst"><a href="#" onclick="javascript:fn_main_headPageMove('21','main/sample_menu/EgovProductInfo'); return false;"><img src="<c:url value='/images/index/900.png' />" /></a></div>
									
									<div style="clear:both;"></div>
									
									<div class="parkfirst"><a href="#" onclick="javascript:fn_main_headPageMove('21','main/sample_menu/EgovProductInfo'); return false;"><img src="<c:url value='/images/index/911.png' />" /></a></div>
									<div class="parkfirst"><a href="#" onclick="javascript:fn_main_headPageMove('21','main/sample_menu/EgovProductInfo'); return false;"><img src="<c:url value='/images/index/999.png' />" /></a></div>
							</div>
			</div>
		</div>
		<!-- //code layer -->		
	</div>
	<!-- footer 시작 -->
	<div id="footer"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" /></div>
	<!-- //footer 끝 -->
<!-- //전체 레이어 끝 -->
</div>
</body>
</html>

