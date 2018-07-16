<%--
  Class Name : EgovIncTopnav.jsp
  Description : 상단메뉴(include)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="egovframework.com.cmm.LoginVO" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript">
    function fn_main_headPageMove(menuNo, url){
	    document.selectOne.menuNo.value=menuNo;
	    document.selectOne.link.value=url;
	    document.selectOne.action = "<c:url value='/EgovPageLink.do'/>";
	    //alert(document.selectOne.action);
	    document.selectOne.submit();
    }
    function fn_main_headPageAction(menuNo, url){
        document.selectOne.menuNo.value=menuNo;
        document.selectOne.link.value="";
        document.selectOne.action = "<c:url value='/' />"+url;
        document.selectOne.method = "post";
        //alert(document.selectOne.action);
        document.selectOne.submit();
    }
</script>
<style>
.navbar {
    overflow: hidden;
    background-color: #333;
    font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: #4d0000;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color:rgba(255, 99, 71, 0.2);
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ffb3b3;
}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>


<!-- topmenu start -->
<form name="selectOne" action="#LINK">
<input name="menuNo" type="hidden" />
<input name="link" type="hidden" />
</form>
<div class="container">
<div class="navbar">
	<a href="<c:url value='/cmm/main/mainPage.do' />">버섯광장</a>
	<a href="#LINK" onclick="javascript:fn_main_headPageMove('11','main/sample_menu/EgovAboutSite')" >사이트소개</a>
	<div class="dropdown">
    <button class="dropbtn">체질별 버섯종류
    	<i class="fa fa-caret-down"></i>
   	</button> 
   	<div class="dropdown-content">
      <a href="#LINK" onclick="javascript:fn_main_headPageMove('21','main/sample_menu/ParkPhysical')">Link 1</a>
      <a href="#LINK" onclick="javascript:fn_main_headPageMove('21','main/sample_menu/ParkPhysical')">Link 2</a>
      <a href="#LINK" onclick="javascript:fn_main_headPageMove('21','main/sample_menu/ParkPhysical')">Link 3</a>
    </div>	         
    </div>
    <a href="#LINK" onclick="javascript:fn_main_headPageMove('31','main/sample_menu/EgovDownload')" >고객지원</a>
    <a href="#LINK" onclick="javascript:fn_main_headPageAction('42','cop/smt/sim/EgovIndvdlSchdulManageWeekList.do')" >알림마당</a>
    <%
       LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO"); 
       if(loginVO != null){ 
    %>
    <li><a href="#LINK" onclick="javascript:fn_main_headPageAction('51','cop/smt/sim/EgovIndvdlSchdulManageMonthList.do')" >사이트관리(관리자)</a>
    <%
       }
    %>
</div>
</div>


<!-- //topmenu end -->