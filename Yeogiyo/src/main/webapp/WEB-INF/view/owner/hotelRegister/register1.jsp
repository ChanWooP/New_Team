<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/12328aec17.js"></script>
<title>Insert title here</title>
<style>
.leftMenu {
	display: inline-block;
	height: 100%;
	width: 150px;
	border-right: solid grey 1px;
}

.leftMenu ul li {
	list-style-type: none;
	padding: 10px;
}

.contents {
	display: inline-block;
	height: 100%;
}

.box {
	border: solid grey 1px;
	border-radius: 3px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="leftMenu">
			<ul>
				<li><i class="fas fa-check"></i>기본 정보<br>
				<li><i class="fas fa-check"></i>위치<br>
				<li><i class="fas fa-check"></i>소개<br>
				<li><i class="fas fa-check"></i>편의 시설/서비스<br>
				<li><i class="fas fa-check"></i>요금 설정<br>
				<li><i class="fas fa-check"></i>예약 설정 관리<br>
				<li><i class="fas fa-check"></i>사진<br>
				<li><i class="fas fa-check"></i>프로필<br>
				<li><i class="fas fa-check"></i>숙소 판매<br>
			</ul>
		</div>

		<div class="contents">
			<h3>숙소</h3>
			<div class="box">
				<h4>숙소 종류</h4>

				<h4>숙소 크기</h4>
			</div>
			<br>

			<h3>객실 및 세부 정보</h3>
			<div class="box">
				<h4>숙박 가능 인원</h4>

				<h4>욕실 수</h4>

				<h4>침실 수</h4>

				<!-- 침실 수 추가할 때 마다 추가되게 cif 태그 사용-->
				<div>
					<h4>침실1</h4>
				</div>
			</div>
		</div>
		</div>
</body>
</html>