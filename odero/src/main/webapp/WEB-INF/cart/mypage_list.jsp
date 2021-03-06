<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/cart_main.css" type="text/css">
<link rel="stylesheet"
	href="http://fonts.googleapis.com/earlyaccess/hanna.css">
<link href="css/mypage.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
<script type="text/javascript">
	_headerRef = 'www.google.co.kr';
</script>
</head>
<style>
.title_wrap {
	padding: 30px;
	margin-bottom: 30px;
}
</style>
<body>
<body class="pc">

	<script
		src="https://ssl.pstatic.net/spacecloud/static/web/js/deploy/20180112051220/min/jquery.min.js"
		type="text/javascript"></script>


	<div class="container">


		<div class="wrap main">
			<div class="title_wrap">찜 리스트</div>
			<!-- //gnb -->
			<div id="_root" style="overflow: hidden; width: 100%; height: 100%;">
				<div id="_container" style="position: relative;">
					<div id="home" class="_page">

						<div id="content_wraper">
							<section class="section_search">
								<!-- <div class="head_wrap">
			<h2><strong>헤드 스판</strong>들어가는부분</h2>
		</div>  -->


								<div class="tab_wrap">
									|<a href="mypage.do"><span class="tab">마이페이지</span></a>|
									<!-- <a href="javascript:history.back()"><span class="tab">뒤로</span> -->
									<!-- tabhover -->
									<c:if test="${jsort=='cos' }">
									&nbsp; <a href="mypage_list.do?sort=cos"><span
											class="tabhover">코스 찜</span></a>
										<a href="mypage_list.do?sort=place"><span class="seltab">가게
												찜</span></a>
									</c:if>
									<!-- tabhover -->
									<c:if test="${jsort=='place' }">
									&nbsp; <a href="mypage_list.do?sort=cos"><span
											class="seltab">코스 찜</span></a>
										<a href="mypage_list.do?sort=place"><span class="tabhover">가게
												찜</span></a>
									</c:if>
								</div>
								<!-- 	<div class="recomm_wrap">
									<h2>추천 키워드</h2>
									<ul class="recomm_list">
										<li class="recomm_item"><a href="javascript:void(0);">태그1</a></li>
										<li class="recomm_item"><a href="javascript:void(0);">태그2</a></li>
										<li class="recomm_item"><a href="javascript:void(0);">태그3</a></li>
										<li class="recomm_item"><a href="javascript:void(0);">태그4</a></li>
										<li class="recomm_item"><a href="javascript:void(0);">태그5</a></li>
									</ul>
								</div> -->
							</section>
							<section class="section_cont">
								<div class="space_list_wrap">
									<div id="_spaceListScrollWrap" class="space_list swiper_list"
										data-sly-wrap-mobile>
										<div class="flex_wrap column3 fluid" id="_spaceScroller">
											<c:if test="${jsort=='cos' }">
												<c:forEach var="vo" items="${list }">
													<!-- 코스찜  -->
													<article class="box box_space _space" data-sly-item>
														<div class="inner">
															<a href="mypage_cos.do?no=${vo.c_no }"
																class="_innerLink nclk">
																<div class="img_box">
																	<span style="background-image: url(${vo.pvo.p_img});"
																		class="img lazy"></span>

																</div> <span class="btns_reserv"><span
																	class="btn_reserv_confirm">추천<br>코스
																</span> </span>



																<div class="info_area">
																	<h3 class="tit_space">[${vo.pvo.p_name }] 코스</h3>
																	<div class="tags">
																		<span class='tag_area_name'>${vo.pvo.p_addr }</span>
																		<%-- <c:forEach var="i" begin="1" end="5"> --%>
																		<span># ${vo.pvo.p_keyword }</span>
																		<%-- </c:forEach> --%>
																	</div>
																	<div class="info_price_hour">
																		<strong class='price'>${vo.pvo.p_price }</strong><span
																			class='txt_unit'>&nbsp;1일 / 2인 기준 </span>
																		<!-- 	<i class="sp_icon ico_npay">네이버페이 사용가능</i> -->
																	</div>
																	<div class="info_number_love">
																		<!-- 	<span class="txt_number_review"> <i
																		class="sp_icon ico_review">리뷰수</i><em>3</em>
																	</span> -->
																		<span class="txt_number_love"> <i
																			class="sp_icon ico_love">좋아요</i> <em>${vo.pvo.p_hit }</em>
																		</span>
																	</div>
																</div>
															</a>
														</div>
													</article>
												</c:forEach>
											</c:if>

											<c:if test="${jsort=='place' }">
												<c:forEach var="vo" items="${list }">
													<!-- 가게 찜  -->
													<article class="box box_space _space" data-sly-item>
														<div class="inner">
															<a href="p_detail.do?p_no=${vo.p_no }"
																class="_innerLink nclk">
																<div class="img_box">
																	<span style="background-image: url(${vo.p_img});"
																		class="img lazy"></span>

																</div> <span class="btns_reserv"><span
																	class="btn_reserv_confirm btn_store">추천<br>가게
																</span> </span>



																<div class="info_area">
																	<h3 class="tit_space">[${vo.p_name }]</h3>
																	<div class="tags">
																		<span class='tag_area_name'>${vo.p_addr }</span> <span>#${vo.p_keyword}</span>
																	</div>
																	<div class="info_price_hour">
																		<strong class='price'>${vo.p_price }</strong><span
																			class='txt_unit'>&nbsp;1일 / 2인 기준</span>
																		<!-- 	<i class="sp_icon ico_npay">네이버페이 사용가능</i> -->
																	</div>
																	<div class="info_number_love">
																		<!-- <span class="txt_number_review"> <i
																		class="sp_icon ico_review">리뷰수</i><em>3</em>
																	</span> -->
																		<span class="txt_number_love"> <i
																			class="sp_icon ico_love">좋아요</i> <em>${vo.p_hit }</em>
																		</span>
																	</div>
																</div>
															</a>
														</div>
													</article>
												</c:forEach>
											</c:if>

										</div>
										<div class="pagination_div text-center">
											<ul class="pagination">
												<%-- <a href="list.do?page=${curpage>1?curpage-1:curpage }" class="btn btn-primary">이전</a>&nbsp;
                <a href="list.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-info">다음</a>&nbsp;&nbsp; --%>
												<c:choose>
													<c:when test="${curpage>block }">
														<li><a href="mypage_list.do?sort=${jsort }&page=1">|◀</a></li>
														<li><a href="mypage_list.do?sort=${jsort }&page=${fromPage-1 }">◀</a></li>
													</c:when>
													<c:otherwise>
														<li><span style="color: gray">|◀</span></li>
														<li><span style="color: gray">◀</span></li>
													</c:otherwise>
												</c:choose>
												<c:forEach var="i" begin="${fromPage }" end="${toPage }">
													<c:if test="${i==curpage }">
														<li class="active"><a>${i}</a></li>
													</c:if>
													<c:if test="${i!=curpage }">
														<li><a href="mypage_list.do?sort=${jsort }&page=${i}">${i}</a></li>
													</c:if>
												</c:forEach>
												<c:choose>
													<c:when test="${toPage<totalpage }">
														<li><a href="mypage_list.do?sort=${jsort }&page=${toPage+1 }">▶</a></li>
														<li><a href="mypage_list.do?sort=${jsort }&page=${totalpage }">▶|</a></li>
													</c:when>
													<c:otherwise>
														<li><span style="color: gray">▶</span></li>
														<li><span style="color: gray">▶|</span></li>
													</c:otherwise>
												</c:choose>
											</ul>



											<%-- 	<ul class="pagination">
												<li><a href="#">이전</a></li>
												<c:forEach var="i" begin="1" end="10">
													<li><a href="#">${i }</a></li>

												</c:forEach>
												<li><a href="#">다음</a></li>
											</ul> --%>

											<%-- <ul class="pagination page-numbers">
												<c:choose>
													<c:when test="${curpage>block }">
														<li><a href="mypage_list.do?sort=${jsort }&page=1">|◀</a></li>
														<li><a href="mypage_list.do?sort=${jsort }&page=${fromPage-1 }">◀</a></li>
													</c:when>
													<c:otherwise>
														<li><span style="color: gray">|◀</span></li>
														<li><span style="color: gray">◀</span></li>
													</c:otherwise>
												</c:choose>
												<c:forEach var="i" begin="${fromPage }" end="${toPage }">
													<c:if test="${i==curpage }">
														<li class="active"><a
															style="font-family: NanumBarunGothic !important;">${i}</a></li>
													</c:if>
													<c:if test="${i!=curpage }">
														<li class="page_btn" data-page="${i}"><a
															style="font-family: NanumBarunGothic !important;">${i}</a></li>
													</c:if>
												</c:forEach>

												<c:choose>
													<c:when test="${toPage<totalpage }">
														<li><a href="mypage_list.do?sort=${jsort }&page=${toPage+1 }">▶</a></li>
														<li><a href="mypage_list.do?sort=${jsort }&page=${totalpage }">▶|</a></li>
													</c:when>
													<c:otherwise>
														<li><span style="color: gray">▶</span></li>
														<li><span style="color: gray">▶|</span></li>
													</c:otherwise>
												</c:choose>
											</ul> --%>
										</div>
									</div>
								</div>
							</section>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>