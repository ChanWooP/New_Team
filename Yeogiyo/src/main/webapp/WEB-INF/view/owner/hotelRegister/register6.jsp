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
.leftNav {
	float: left;
	height: 100%;
	width: 150px;
	margin: 20px;
	border-radius: 2px;
	box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);
}

.leftNav ul li {
	list-style-type: none;
	padding: 10px;
}

.contentsContainer {
	float: left;
	height: 100%;
	width: 70%;
	margin: 20px;
}

.contentsBox {
	margin-bottom: 20px;
    padding: 15px;
    border-radius: 2px;
    box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);
}

.contentsBox div input{
	width: 43px;
	height: 43px;
	margin-left: -1px; 
	margin-right: -1px;
	vertical-align: middle;
}

.formRow{
	display: table-row;
}

.formRow button{
	width: 43px;
	height: 43px;
	background: gold;
	color: white;
	font-size: 20pt;
	border-radius: 2px;
	text-align: center;
	display: table-cell;
 	vertical-align: middle;
 	cursor: pointer;
 	border: solid 1px gold;
}

.buildingIconBox{
	padding: 15px;
	text-align: center;
	width: 135px;
	height: 90px;
	border: solid 1px #A9A9A9;
	display: inline-block;
}

.bigTitle{
	font-size: 25px;
	font-weight: bold;
}

.smallTitle{
	font-size: 15px;
	font-weight: bold;
}

.btnPreNext{
	width: 210px;
	height: 46px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="leftNav">
			<ul>
				<li><i class="fas fa-check"></i>기본 정보</li>
				<li><i class="fas fa-check"></i>위치</li>
				<li><i class="fas fa-check"></i>소개</li>
				<li><i class="fas fa-check"></i>편의 시설/서비스</li>
				<li><i class="fas fa-check"></i>요금 설정</li>
				<li><i class="fas fa-check"></i>예약 설정 관리</li>
				<li><i class="fas fa-check"></i>사진</li>
				<li><i class="fas fa-check"></i>프로필</li>
				<li><i class="fas fa-check"></i>숙소 판매</li>
			</ul>
		</div>

		<div class="contentsContainer">
			<form action="<%=cp%>/owner/hotelRegister/register2" method="get" name="registerForm">
			<div class="contentsBox">
				<div class="bigTitle">숙소</div>
				<div class="bulidingBox">
				<!-- 숙소 종류 전송 히든폼으로 처리하기 -->
				<div class="smallTitle">숙소 종류</div>
					<div class="buildingIconBox">
						<i class="fas fa-building" style="font-size: 45px;"></i><br>
						모텔
					</div>
					
					<div class="buildingIconBox">
						<i class="fas fa-hotel" style="font-size: 45px;"></i><br>
						호텔
					</div>
					
					<div class="buildingIconBox">
					<i class="fas fa-home" style="font-size: 45px;"></i><br>
						홈스테이
					</div>
					
					<div class="buildingIconBox">
						<i class="fas fa-campground" style="font-size: 45px;"></i><br>
						캠핑장
					</div>
				</div>
				<div class="smallTitle">숙소 크기</div>
				<input type="text">㎡
			</div>
			
			
			<div class="contentsBox">
			<div class="bigTitle">객실 및 세부 정보</div>
				<div class="smallTitle">층 수</div>
					<div class="formRow">				
						<button type="button" class="plusBtn">+</button>
						<input type="text">
						<button type="button" class="minusBtn">-</button>		
					</div>
			</div>			
			
			<!-- rooname에 호수 저장  -->			
			
			<div class="contentsBox">
			<div class="bigTitle">1층</div>
				<!-- 객실 수에 따라 contentsBox 추가 -->
				<div class="smallTitle">객실 수</div>
				<div class="formRow">				
					<button type="button" class="plusBtn">+</button>
					<input type="text">
					<button type="button" class="minusBtn">-</button>		
				</div>
			</div>
			
			
			<div class="contentsBox">
			<div class="bigTitle">방이름(호수): <input type="text"></div>
				<div class="smallTitle">숙박 가능 인원</div>
				<div>총 침대 공간과 소파를 고려해 볼 때 편안하게 숙박할 수 있는 최대 인원 수</div>
				<div>
					<div class="formRow">				
						<button type="button" class="plusBtn">+</button>
						<input type="text">
						<button type="button" class="minusBtn">-</button>		
					</div>
					
					<div>
						<div class="smallTitle">침대</div>
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
						<div class="formRow">				
							<button type="button" class="plusBtn">+</button>
							<input type="text">
							<button type="button" class="minusBtn">-</button>		
						</div>
					</div>
					<div>
						<button type="button">침대 추가</button>
					</div>
					
					<div class="smallTitle">욕실 수</div>
					<div>숙소 건물/빌딩 혹은 단지에 있는 공용/공동 욕실이 아닌, 해당 숙소에 있는 욕실만을 세어 설정하세요.</div>
					<div class="formRow">				
						<button type="button" class="plusBtn">+</button>
						<input type="text">
						<button type="button" class="minusBtn">-</button>		
					</div>
				</div>
			</div>
				<button type="button" class="btnPreNext" id="nextBtn">다음</button>
			</form>
		</div>
	</div>
	
	<script>
		var nextBtn = document.registerForm;
		
		nextBtn.addEventListener("", function(){
		
			var str = f.userId.value;
		    if(!str) {
		        alert("아이디를 입력하세요. ");
		        f.userId.focus();
		        return;
		    }
		});
		
	</script>
</body>
</html>