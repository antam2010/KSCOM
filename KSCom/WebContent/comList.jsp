<%@page import="vo.PageInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="vo.Boardbean" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/form.css">
<title>컴퓨터리스트</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
$(function () {
	$('#img_1').mouseover(function () {
		$('#img_1').css('color','red');
	});
	$('#img_1').mouseleave(function () {
		$('#img_1').css('color','white');
	});
	$('#img_2').mouseover(function () {
		$('#img_2').css('color','red');
	});
	$('#img_2').mouseleave(function () {
		$('#img_2').css('color','white');
	});
	$('#img_3').mouseover(function () {
		$('#img_3').css('color','red');
	});
	$('#img_3').mouseleave(function () {
		$('#img_3').css('color','white');
	});
	$('#img_4').mouseover(function () {
		$('#img_4').css('color','red');
	});
	$('#img_4').mouseleave(function () {
		$('#img_4').css('color','white');
	});
	
	
	
	
	
});


</script>
</head>
<body>

<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>

<section>

<c:choose>
<c:when test="${adList eq null }">
<article style="border: 0px;">
<div class="center_text"><h3>광고 준비중입니다.<br>빠른 시일 내로 준비하겠습니다</h3></div>
</article>
</c:when>
<c:otherwise>

<article>
	
		
	<c:choose>
		<c:when test="${id eq 'admin' }">
		<div class="ad_h4"> 등록 방법: 제품 클릭 -> 하단 '광고 등록' 버튼</div>
		</c:when>
		<c:otherwise>
			<div class="ad_h3">인기 제품</div>
		</c:otherwise>
	</c:choose>
	
<jsp:include page="adList.jsp"></jsp:include>

	
</article>

</c:otherwise>
</c:choose>


<aside class="board_margin">
	<div class="ad_h3">주요 IT 뉴스</div>
	<ul>
		
		<li><a href="http://www.itnews.or.kr/?p=33997">한국인공지능협회, ‘서울형 뉴딜 일자리 AI 학습 데이터 구축사업’ 인턴십 본격 착수</a></li>
		<li><a href="http://www.itnews.or.kr/?p=33728">구글, 시각 장애인용 AI ‘룩아웃’ 서비스 전 세계 확대</a></li>
		<li><a href="https://www.fnnews.com/news/202010121417556138">'인공지능 반도체' 강국 실현..2030년 세계시장 20% 선점</a></li>
		<li><a href="https://news.naver.com/main/ranking/read.nhn?mid=etc&sid1=111&rankingType=popular_day&oid=092&aid=0002201850&date=20201014&type=1&rankingSeq=7&rankingSectionId=105">애플 아이폰12, 5G 제패할까…삼성-화웨이 추월 전망</a></li>
		
	</ul>
</aside>
<aside>
<div class="center_text">
	<img src="images/board.jpg" class="img200_150">
	<div class="ad_h3">공지사항 준비중...<br>죄송합니다</div>
	<table class="table_td_border"border="1px solid black;">
	<tr><td>준비 중....</td></tr><tr><td>준비 중....</td></tr><tr><td>준비 중....</td></tr><tr><td>준비 중....</td></tr>
	</table>
	</div>

</aside>
</section>
<section>
<article>

	<table>
		<tr>
			<td>글 제목</td>
			<td>날짜</td>
			<td>조회수</td>
		</tr>
		
		<c:forEach var="list" items="${boardList }" end="3">
		<tr>
			<td>${list.subject }</td>
			<td>${list.date }</td>
			<td>${list.readcount }</td>
		</c:forEach>
	</table>
</article>


<aside>
<a class="mobileSize" href="javascript:;"><span id="img_1" class="absolute white_h4 ad_h5">추천PC</span>
			<img src="images/OverWatch.jpg"></a>
</aside>
<aside>
<a class="mobileSize" href="javascript:;"><span id="img_2" class="absolute white_h4 ad_h5">추천PC</span>
			<img src="images/battleGround.jpg"></a>
</aside>
<aside>
<a class="mobileSize" href="javascript:;"><span id="img_3" class="absolute white_h4 ad_h5">추천PC</span>
			<img src="images/LOL.jpg"></a>
</aside>
<aside>
<a class="mobileSize" href="javascript:;"><span id="img_4" class="absolute white_h4 ad_h5">추천PC</span>
			<img src="images/RSS.jpg"></a>
</aside>


</section>
<section>
<div class="">인기 쇼핑몰</div>
	<ul >
	<li><a href="http://www.gmarket.co.kr/index.asp?jaehuid=200002657" target="_blank">
	<img src="http://img.danawa.com/cmpny_info/images/EE128_logo.gif" class="img_72_32" alt="지마켓" /></a></div></li>
	<li><a href="http://www.hmall.com/front/shNetworkShop.do?NetworkShop=Html&amp;ReferCode=250&amp;Url=http://www.hmall.com/Home.html" target="_blank" >
	<img src="http://img.danawa.com/cmpny_info/images/ED907_logo.gif" class="img_72_32" alt="Hmall" /></a></div></li>
	<li><a href="http://www.thehyundai.com/front/shNetworkShop.thd?NetworkShop=Html&amp;ReferCode=030&amp;utm_source=danawa&amp;utm_medium=cps&amp;utm_term=danawa&amp;" target="_blank" onMouseDown="javascript:_trkEventLog('15통합메인_쇼핑파트너즈_더현대닷컴');">
	<img src="http://img.danawa.com/cmpny_info/images/TP90D_logo.gif" class="img_72_32" alt="더현대닷컴" /></a></li>
	<li><a href="http://banner.auction.co.kr/bn_redirect.asp?ID=BN00011729" target="_blank" onMouseDown="javascript:_trkEventLog('15통합메인_쇼핑파트너즈_옥션');">
	<img src="http://img.danawa.com/cmpny_info/images/EE715_logo.gif" class="img_72_32" alt="옥션" /></a></li>
	<li><a href="https://www.lotteon.com/p/display/main/lotteon?mall_no=1&amp;ch_no=100071&amp;ch_dtl_no=1000227" target="_blank" onMouseDown="javascript:_trkEventLog('15통합메인_쇼핑파트너즈_롯데ON');">
	<img src="http://img.danawa.com/cmpny_info/images/EE309_logo.gif" class="img_72_32" alt="롯데ON" /></a></li>
	<li><a href="http://with.gsshop.com/jsp/jseis_withLGeshop.jsp?media=Qm&amp;gourl=http://www.gsshop.com/index.gs" target="_blank" onMouseDown="javascript:_trkEventLog('15통합메인_쇼핑파트너즈_GSSHOP');">
	<img src="http://img.danawa.com/cmpny_info/images/ED908_logo.gif" class="img_72_32" alt="GSSHOP" /></a></li>
	<li><a href="http://www.e-himart.co.kr/index.jsp?fromShop=dnw" target="_blank" onMouseDown="javascript:_trkEventLog('15통합메인_쇼핑파트너즈_하이마트');">
	<img src="http://img.danawa.com/cmpny_info/images/TJ418_logo.gif" class="img_72_32" alt="하이마트" /></a></li>
	<li><a href="http://www.11st.co.kr/connect/Gateway.tmall?method=Xsite&amp;tid=1000002531" target="_blank" onMouseDown="javascript:_trkEventLog('15통합메인_쇼핑파트너즈_11번가');">
	<img src="http://img.danawa.com/cmpny_info/images/TH201_logo.gif" class="img_72_32" alt="11번가" /></a></li>
	<li><a href="https://www.lotteon.com/p/display/main/ellotte?mall_no=2&amp;ch_no=100072&amp;ch_dtl_no=1000228" target="_blank" onMouseDown="javascript:_trkEventLog('15통합메인_쇼핑파트너즈_롯데백화점');">
	<img src="http://img.danawa.com/cmpny_info/images/TLC16_logo.gif" class="img_72_32" alt="롯데백화점" /></a></li>
	<li><a href="http://www.cjmall.com/joinmall/danawa/danawa.jsp?&amp;url=http://www.cjmall.com" target="_blank" onMouseDown="javascript:_trkEventLog('15통합메인_쇼핑파트너즈_Cjmall');">
	<img src="http://img.danawa.com/cmpny_info/images/ED909_logo.gif" class="img_72_32" alt="Cjmall" /></a></li>
	</ul>
</section>
<footer>
<jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>
</html>