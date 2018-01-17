<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid" id="navbar-main">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href="#" style="color: white"> <img id="logo_img"
				src="image/logo.PNG">
			</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav mynav">
				<li class="nav_main"><strong><a href="#">데이트코스</a></strong></li>
				<li class="nav_main"><strong><a href="#">맛집</a></strong></li>
				<li class="nav_main"><strong><a href="#">놀거리</a></strong></li>
				<li class="nav_main"><strong><a href="#">자유게시판</a></strong></li>
				<li class="nav_main"><strong><a href="#">후기게시판</a></strong></li>
			</ul>
			<ul class="navbar-right nav navbar-nav mynav" id="nav-right">
				<li class="nav_main" id="loginBtn"><strong><a
						href="#loginModal" data-toggle="modal">로그인</a></strong></li>
				<li class="nav_main"><strong><a href="#">마이페이지</a></strong></li>
			</ul>
			<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true"
				data-keyboard="false" data-backdrop="static">
				<div class="modal-dialog" id="login-modal">
					<div class="modal-content" id="login-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true" style="color: black;">X</span><span
									class="sr-only">Close</span>
							</button>

							<h3 class="modal-title" id="myModalLabel">LOGIN</h3>
						</div>
						<div class="modal-body">
							<jsp:include page="../member/login.jsp" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>