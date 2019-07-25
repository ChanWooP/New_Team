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
.left-nav {
	float: left;
	height: 100%;
	width: 150px;
	margin: 35px;
	border-radius: 2px;
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
}

.left-nav ul li {
	list-style-type: none;
	padding: 10px;
}

.contents-container {
	float: left;
	height: 100%;
	width: 70%;
	margin: 20px;
}

.big-contents-box {
	margin-bottom: 20px;
	padding: 15px;
}

.small-contents-box{
	margin-bottom: 25px;
}

.big-contents-box div input {
	width: 43px;
	height: 43px;
	margin-left: -1px;
	margin-right: -1px;
	vertical-align: middle;
	border-left: none;
	border-right: none;
	border-top: gold solid 1px;
	border-bottom: gold solid 1px;
}

.plus-btn {
	border-top-left-radius: 8px;
	border-bottom-left-radius: 8px;
}

.minus-btn {
	border-top-right-radius: 8px;
	border-bottom-right-radius: 8px;
}

.form-row {
	display: table-row;
	margin-top: 10px;
	margin-bottom: 10px;
}

.form-row button {
	width: 43px;
	height: 43px;
	background: gold;
	color: white;
	font-size: 20pt;
	text-align: center;
	display: table-cell;
	vertical-align: middle;
	cursor: pointer;
	border: solid 1px gold;
}

.building-iconBox {
	padding: 15px;
	text-align: center;
	width: 135px;
	height: 90px;
	border: solid 1px #A9A9A9;
	display: inline-block;
}

.building-iconBox:hover {
	color: white;
	background: gold;
}

.big-title {
	font-size: 25px;
	font-weight: bold;
}

.small-title {
	font-size: 15px;
	font-weight: bold;
	margin-bottom: 7px;
	margin-bottom: 7px;
}

.description{
	margin-top: 7px;
	margin-bottom: 7px;
}

.btn-box {
	text-align: right;
}

.pre-btn {
	width: 210px;
	height: 46px;
	background: white;
	color: gold;
	font-size: 15pt;
	text-align: center;
	border: solid 1px gold;
	border-radius: 2px;
}

.next-btn {
	width: 210px;
	height: 46px;
	background: gold;
	color: white;
	font-size: 15pt;
	text-align: center;
	border: solid 1px gold;
	border-radius: 2px;
}

#room-name-form {
	width: 150px;
	height: 35px;
	border: solid 1px #A9A9A9;
	border-radius: 2px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="left-nav">
			<ul>
				<li><i class="fas fa-check"></i><a href="#">기본 정보</a></li>
				<li><i class="fas fa-check"></i><a href="#">위치</a></li>
				<li><i class="fas fa-check"></i><a href="#">소개</a></li>
				<li><i class="fas fa-check"></i><a href="#">편의 시설/서비스</a></li>
				<li><i class="fas fa-check"></i><a href="#">요금 설정</a></li>
				<li><i class="fas fa-check"></i><a href="#">예약 설정 관리</a></li>
				<li><i class="fas fa-check"></i><a href="#">사진</a></li>
				<li><i class="fas fa-check"></i><a href="#">프로필</a></li>
				<li><i class="fas fa-check"></i><a href="#">숙소 판매</a></li>
			</ul>
		</div>

		<div class="contents-container">
			<form action="<%=cp%>/owner/hotelRegister/register2" method="get"
				name="registerForm">
				<div class="big-contents-box">
					<div class="big-title ">숙소</div>
					<div class="bulidingBox">
						<!-- 숙소 종류 전송 히든폼으로 처리하기 -->
						<div class="small-title">숙소 종류</div>
						<div class="building-iconBox">
							<div>
								<i class="fas fa-building" style="font-size: 45px;"></i>
							</div>
							<div>모텔</div>
						</div>

						<div class="building-iconBox">
							<div>
								<i class="fas fa-hotel" style="font-size: 45px;"></i>
							</div>
							<div>호텔</div>
						</div>

						<div class="building-iconBox">
							<div>
								<i class="fas fa-home" style="font-size: 45px;"></i>
							</div>
							<div>홈스테이</div>
						</div>

						<div class="building-iconBox">
							<div>
								<i class="fas fa-campground" style="font-size: 45px;"></i>
							</div>
							<div>캠핑장</div>
						</div>
					</div>
					<div class="small-title">숙소 크기</div>
					<input type="text">㎡
				</div>


				<div class="big-contents-box">
					<div class="big-title ">객실 및 세부 정보</div>
					<div class="small-title">층 수</div>
					<div class="form-row">
						<button type="button" class="plus-btn">+</button>
						<input type="text">
						<button type="button" class="minus-btn">-</button>
					</div>
				</div>

				<!-- rooname에 호수 저장  -->

				<div class="big-contents-box">
					<div class="big-title ">1층</div>
					<!-- 객실 수에 따라 big- 추가 -->
					<div class="small-title">객실 수</div>
					<div class="form-row">
						<button type="button" class="plus-btn">+</button>
						<input type="text">
						<button type="button" class="minus-btn">-</button>
					</div>
				</div>


				<div class="big-contents-box">
					<div class="big-title ">
						방이름(호수): <input type="text" id="room-name-form">
					</div>
					<div class="small-contents-box">
						<div class="small-title">숙박 가능 인원</div>
						<div class="description">총 침대 공간과 소파를 고려해 볼 때 편안하게 숙박할 수 있는 최대 인원 수</div>

						<div class="form-row">
							<button type="button" class="plus-btn">+</button>
							<input type="text">
							<button type="button" class="minus-btn">-</button>
						</div>
					</div>

					<div class="small-contents-box">
						<div class="small-title">침대</div>
						<select>
							<option value="">싱글베드</option>
							<option value="">더블베드</option>
							<option value="">퀸베드</option>
							<option value="">킹베드</option>
							<option value="">슈퍼 킹베드</option>
							<option value="">벙크베드</option>
							<option value="">소파베드</option>
							<option value="">요이불 세트</option>
						</select>
						<div class="form-row">
							<button type="button" class="plus-btn">+</button>
							<input type="text">
							<button type="button" class="minus-btn">-</button>
						</div>
						<div>
							<button type="button">침대 추가</button>
						</div>
					</div>

					<div class="small-contents-box">
						<div class="small-title">욕실 수</div>
						<div class="description">숙소 건물/빌딩 혹은 단지에 있는 공용/공동 욕실이 아닌, 해당 숙소에 있는 욕실만을 세어
							설정하세요.</div>
						<div class="form-row">
							<button type="button" class="plus-btn">+</button>
							<input type="text">
							<button type="button" class="minus-btn">-</button>
						</div>
					</div>

					<div class="btn-box">
						<button type="button" class="pre-btn" id="next-btn">이전</button>
						<button type="button" class="next-btn" id="next-btn">다음</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<script>
		var nextBtn = document.registerForm;

		nextBtn.addEventListener("", function() {

			var str = f.userId.value;
			if (!str) {
				alert("아이디를 입력하세요. ");
				f.userId.focus();
				return;
			}
		});
	</script>
</body>
</html>