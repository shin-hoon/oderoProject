<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="freeBoard/freeBoard.css" type="text/css">
<script type="text/javascript" src="freeBoard/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<style>
.row{
	width:1200px;
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<h3>새글</h3>
			<form id="formSubmit" method="post" action="freeBoardInsert_ok.do">
			<table class="table aa">
				<tr>
					<td width=15% class="text-right">제목</td>
					<td width=85%>
						<input type="text" name="subject" style="height:15px;width:370px;" 
      						class="form-control" id="subject" placeholder="제목을 입력하세요."
      					/>
					</td>
				</tr>
				<tr>
					<td width=15% class="text-right">내용</td>
					<td width=85%>
						<textarea name="content" id="ir1" rows="10" cols="100"
							style="width: 966px; height: 412px; display: none;"
							class="form-control">
						</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="text-center">
						<c:if test="${sessionScope.m_id == null}">
							<input type="button" onclick="alert('로그인이 필요합니다.');" value="글쓰기" class="btn btn-sm table-th login" />
						</c:if>
						<c:if test="${sessionScope.m_id != null}">
							<input type="button" onclick="submitContents(this);" value="글쓰기" class="btn btn-sm table-th login" />
						</c:if>
						<input type="button" value="취소 " class="btn btn-sm table-th" onclick="javascript:history.back()">
					</td>
				</tr>
			</table>
			</form>
		</div>
	</div>
<script type="text/javascript" src="freeBoard/freeBoard.js" charset="utf-8"></script>


</body>
</html>