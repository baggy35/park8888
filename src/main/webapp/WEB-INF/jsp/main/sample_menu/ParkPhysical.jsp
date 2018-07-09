<%--
  Class Name : EgovProductInfo.jsp
  Description : 샘플화면 - 대표제품 소개페이지(sample)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<title>표준프레임워크 경량환경 홈페이지템플릿</title>
<link href="<c:url value='/'/>css/common.css" rel="stylesheet" type="text/css" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
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
	<div id="container">
		<!-- 좌측메뉴 시작 -->
		<div id="leftmenu"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncLeftmenu" /></div>
		<!-- //좌측메뉴 끝 -->
			<!-- 현재위치 네비게이션 시작 -->
			<div id="content">
				<div id="cur_loc">
					<div id="cur_loc_align">
						<ul>
							<li>HOME</li>
							<li>&gt;</li>
							<li>정보마당</li>
							<li>&gt;</li>
							<li><strong>주요사업소개</strong></li> 
						</ul>
					</div> 
				</div>				
				<div id="content_img_div"><img src="<c:url value='/'/>images/subtitle/100.PNG" width="776" height="230" alt="" /></div>   
				<!-- main content 시작 -->
				<div class="content_field">
						<div><h2>주요사업소개</h2></div>
							<h3>구성</h3>
							<fieldset><legend>조건정보 영역</legend>
									<p>전자정부 표준프레임워크는 실행환경, 개발환경, 관리환경, 운영환경 등 4개의 표준프레임워크 환경과 공통컴포넌트로 구성된다. 
									        전자정부 및 공공사업에서 웹 어플리케이션 시스템 구축 시 어플리케이션 아키텍처와 기본 기능 및 공통컴포넌트를 표준으로 제공하는 
									        개발프레임워크로서 다음과 같이 실행, 개발, 운영, 관리환경과 공통컴포넌트로 구성됨</p>
							</fieldset>			
							<h3>실행 환경</h3>
							<fieldset><legend>조건정보 영역</legend>
									<p>전자정부 사업에서 개발하는 업무 프로그램의 실행에 필요한 공통모듈 등  업무 프로그램 개발 시 화면,서버 프로그램, 
									        데이터 개발을 표준화가 용이하도록 지원하는 응용프로그램 환경</p>
							</fieldset>	
							<div class="container">      
								  <table class="table table-striped">
								    <thead>
								      <tr>
								        <th>체질</th>
								        <th>특징</th>
								      </tr>
								    </thead>
								    <tbody>
								      <tr>
								        <td><h3>금양체질</h3></td>
								        <td><h2>폐와 대장기능이 강하고 간 쓸개 기능이 약한 체질</h2>
								        	육식,유제품등을 상시 복용하게 되면 폐열이 높아지게 되어 각종 알러지성 질환,
								        	아토피등의 질환으로 고생을 하게 됩니다.간이 약하여 약물중독,양약에 대한 
								        	피해가 큽니다.
								        </td>
								      </tr>
								      <tr>
								        <td><h3>금음체질</h3></td>
								        <td><h2>대장과 폐의 기능이 강하고 간 쓸개 기능이 약한 체질</h2>
								        	육식을 많이 할 경우 대장열이 심해지면서 신경이 예민해지고,만성 소화불량,변비등
								        	각종 질환으로 고생을 합니다.
								        </td>								      </tr>
								      <tr>
								        <td><h3>목양체질</h3></td>
								        <td><h2>간기능과 담낭이 강하고 폐와 대장의 기능이 약한체질</h2>
								        	목양체질은 마음이 인자하고 남의 잘못을 쉽게 용서한다.말로 따지는 것을 싫어하며
								        	툭 터진 넓은 곳에서 활동하기를 좋아하고, 계획적이기 보다는 투기적이고 창의적이기 보다는
								        	되어진대로 적응하려는 편이다.
								        </td>
								      </tr>
								      <tr>
								        <td><h3>목음체질</h3></td>
								        <td><h2>담낭과 간기능이 강하고 대장과 폐의 기능이 약한체질</h2>
								        	목음체질은 활동적이고 봉사적인 반면에 성질이 급하고 감수성이 강하며 알콜중독에 잘 걸리는
								        	체질이므로 직업선택에 있어서 이런 점을 고려해야 한다.
								        </td>
								      </tr>
								      <tr>
								        <td><h3>수양체질</h3></td>
								        <td><h2>신장,방광기능이 강하고 비장과 위기능이 약한 체질</h2>
								        	모든것을 숙고한 후에 결정하는 조직적이고 완벽주의이며 내향적인 성격의 소유자이다.
								        	그러므로 번거로운 것을 좋아하지 않고, 투기성이 있는 사업보다는 사무직과 법률직을 선호하며,
								        	대중문화에도 소질이 많고 운동도 잘한다.
								        </td>
								      </tr>
								      <tr>
								        <td><h3>수음체질</h3></td>
								        <td><h2>신장,방광기능이 강하고 위기능과 비장이 약한 체질</h2>
								        	수음체질 사람들이 직업을 선택할 때 가장 중요하게 고려할 것은 그 약한 소화력이다.
								        	너무 편하고 조용하거나 지나치게 과로하는 일도 안되고 소식을 하되 제 때에 식사는 할 수 있는 직종이면서
								        	동시에 체질적 성품에도 잘 맞는 일을 선택해야 한다.
								        </td>
								      </tr>
								      <tr>
								        <td><h3>토양체질</h3></td>
								        <td><h2>비장,위장이 강하고 신장,방광기능이 약한체질</h2>
								        	새것에 대한 호기심이 강하고 항상 마음이 바쁘다.그러므로 직업 선택에 있어서 각별한 주의가 필요하며
								        	아무렇게나 되는대로 했다가는 뒤늦게 직업을 바꾸는 경우각 생긴다.
								        </td>
								      </tr>
								      <tr>
								        <td><h3>토음체질</h3></td>
								        <td><h2>위와 췌장기능이 강하고 방광,시장기능이 약한체질</h2>
								        	모든 병의 시작은 강한 소화기계의 위열때문입니다.무엇이든지 소화시킬 수 있는 용광로같은 소화기를 
								        	가졌으나,토양체질보다 매운음식,열이 많은 음식에 대한 부작용이 훨씬 심한편이다.
								        </td>
								      </tr>
								    </tbody>
								  </table>
								</div>
															
				</div>
				<!-- //main content 끝 -->	
	</div>	
	<!-- //container 끝 -->
	<!-- footer 시작 -->
	<div id="footer"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" /></div>
	<!-- //footer 끝 -->
</div>
<!-- //전체 레이어 끝 -->
</body>
</html>