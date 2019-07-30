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
<title>호텔등록 및 회원가입</title>
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

.left-nav ul li a {
	color: #3B1E1E;
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

.small-contents-box {
	margin-bottom: 25px;
}

.plus-minus-input {
	width: 43px;
	height: 43px;
	margin-left: -1px;
	margin-right: -1px;
	vertical-align: middle;
	border-left: none;
	border-right: none;
	border-top: gold solid 1px;
	border-bottom: gold solid 1px;
	outline: none;
	text-align: center;
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
	color: #3B1E1E;
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
	border: solid 1px #3B1E1E;
	display: inline-block;
	color: #3B1E1E;
}

.building-iconBox:hover {
	color: white;
	background: gold;
}

.title-box {
	padding: 15px;
}

.title {
	font-size: 25px;
	font-weight: bold;
}

.big-title {
	font-size: 20px;
	font-weight: bold;
}

.small-title {
	font-size: 15px;
	font-weight: bold;
	margin-bottom: 7px;
	margin-bottom: 7px;
}

.description {
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
	color: #3B1E1E;
	font-size: 15pt;
	text-align: center;
	border: solid 1px #3B1E1E;
	border-radius: 2px;
}

.next-btn {
	width: 210px;
	height: 46px;
	background: gold;
	color: #3B1E1E;
	font-size: 15pt;
	text-align: center;
	border: solid 1px gold;
	border-radius: 2px;
}

#big-form {
	width: 150px;
	height: 35px;
	border: solid 1px #A9A9A9;
	border-radius: 2px;
}

.small-form {
	height: 30px;
	border: solid 1px #A9A9A9;
	border-radius: 2px;
}

.description-form{
	width: 782px;
	height: 100px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="left-nav">
			<ul>
				<li><i class="fas fa-check" style="color: #3B1E1E"></i><a
					href="#">기본 정보</a></li>
				<li><i class="fas fa-check" style="color: #3B1E1E"></i><a
					href="#">위치</a></li>
				<li><i class="fas fa-check" style="color: #3B1E1E"></i><a
					href="#">소개</a></li>
				<li><i class="fas fa-check" style="color: #3B1E1E"></i><a
					href="#">편의 시설/서비스</a></li>
				<li><i class="fas fa-check" style="color: #3B1E1E"></i><a
					href="#">요금 설정</a></li>
				<li><i class="fas fa-check" style="color: #3B1E1E"></i><a
					href="#">예약 설정 관리</a></li>
				<li><i class="fas fa-check" style="color: #3B1E1E"></i><a
					href="#">사진</a></li>
				<li><i class="fas fa-check" style="color: #3B1E1E"></i><a
					href="#">프로필</a></li>
				<li><i class="fas fa-check" style="color: #3B1E1E"></i><a
					href="#">숙소 판매</a></li>
			</ul>
		</div>

		<div class="contents-container">
			<form action="<%=cp%>/owner/hotelRegister/register4" method="post" name="register4Form">
				<div class="title-box">
					<div class="title">숙소 제공 편의 시설/서비스 관리하기</div>
					<div class="description">숙소에서 제공하는 편의 시설/서비스를 설정하세요.</div>
				</div>
				
				<div class="big-contents-box">
					<div class="big-title ">편의 시설 등록</div>
					<br>
					<div class="small-contents-box">
						<div class="small-title">추천 사항</div>
						<div class="description">자주 검색하는 시설/서비스</div>
							<select name="자주 검색하는 시설/서비스" class="selectForm">
								<option value="none">선택 안 함</option>
								<option value="에어컨">에어컨</option>
								<option value="헤어드라이어">헤어드라이어</option>
								<option value="다리미">다리미</option>
								<option value="TV">TV</option>
								<option value="케이블 TV">케이블 TV</option>
								<option value="세탁기">세탁기</option>
								<option value="샴푸">샴푸</option>
								<option value="리넨">리넨</option>
								<option value="타월">타월</option>
							</select>
							
							<!-- 유료무료 선택에 따라서 가격 입력 폼 생기거나 사라지게 만들기 -->
							<!-- 선택 안 함에서 다른 걸로 바뀌면 아래 폼 나오도록 -->
							<select name="is-price">
								<option value="유료">유료</option>
								<option value="무료">무료</option>
							</select>
							
							가격: <input type="text">
					</div>
					
					<div class="small-contents-box">
						<div class="small-title">인터넷</div>
						<div class="description">여행객들이 이용할 수 있는 인터넷 시설</div>
							<select name="인터넷" class="selectForm">
									<option value="">선택 안 함</option>
								<option value="Wi-Fi">유료  Wi-Fi</option>
								<option value="인터넷">유료 인터넷</option>
							</select>
							
							<select name="is-price">
								<option value="none">선택 안 함</option>
								<option value="유료">유료</option>
								<option value="무료">무료</option>
							</select>
					</div>
					
					<div class="small-contents-box">
						<div class="small-title">접근/출입 편의</div>
						<div class="description">여행객들의 편리한 투숙을 위한 시설/서비스</div>
						
							<select name="접근/출입 편의" class="selectForm">
								<option value="none">선택 안 함</option>
								<option value="전용 출입구">전용 출입구</option>
								<option value="건물 내 엘리베이터">건물 내 엘리베이터</option>
								<option value="휠체어 접근 가능">휠체어 접근 가능</option>
								<option value="버저/무선 인터폰">버저/무선 인터폰</option>
								<option value="도어맨">도어맨</option>
							</select>
							
							<select name="is-price">
								<option value="유료">유료</option>
								<option value="무료">무료</option>
							</select>							
					</div>
					
					<div class="small-contents-box">
						<div class="small-title">주방</div>
						<div class="description">여행객들이 편안하게 먹고 마시는 데 이용할 수 있는 편의 시설 및 용품</div>
							<select name="주방" class="selectForm">
								<option value="none">선택 안 함</option>
								<option value="커피/티 메이커">커피/티 메이커</option>
								<option value="조식">조식</option>
								<option value="차">차</option>
							</select>
							
							<select name="is-price">
								<option value="유료">유료</option>
								<option value="무료">무료</option>
							</select>	

					</div>
					
					<div class="small-contents-box">
						<div class="small-title">편의 시설/서비스</div>
						<div class="description">여행객들이 검색하고 더 많은 예약을 받을 수 있는 기회도 증가시킬 수 있는 시설/서비스</div>
						
							<select name="편의 시설/서비스" class="selectForm">
								<option value="none">선택 안 함</option>
								<option value="책상/업무 공간">책상/업무 공간</option>
								<option value="개인전용 수영장">개인전용 수영장</option>
								<option value="난방">난방</option>
								<option value="냉방">냉방</option>
								<option value="건조기">건조기</option>
								<option value="실내 벽난로">실내 벽난로"</option>
								<option value="옷장">옷장</option>
								<option value="실내 수영장">실내 수영장</option>
								<option value="실외 수영장">실외 수영장</option>
								<option value="체육관">체육관</option>
								<option value="무료 주차">무료 주차</option>
								<option value="온수 욕조">온수 욕조</option>
							</select>
							
							<select name="is-price">
								<option value="유료">유료</option>
								<option value="무료">무료</option>
							</select>
		
					</div>
					
					<div class="small-contents-box">
						<div class="small-title">안전시설</div>
						<div class="description">여행객들의 투숙 기간 동안 필요한 숙소 안전시설</div>
							<select name="안전시설" class="selectForm">
								<option value="none">선택 안 함</option>
								<option value="화재 탐지기">화재 탐지기</option>
								<option value="일산화탐소 탐지기">일산화탐소 탐지기</option>
								<option value="구급상자">구급상자</option>
								<option value="소화기">소화기</option>
							</select>
						
							<select name="is-price">
								<option value="유료">유료</option>
								<option value="무료">무료</option>
							</select>
					</div>
					
					<div class="small-contents-box">
						<div class="small-title">기타</div>
						<div class="description">특정 여행객에게 필요할 수도 있는 기타 사항</div>
							<select name="기타" class="selectForm">
								<option value="none">선택 안 함</option>
								<option value="흡연 가능">흡연 가능</option>
								<option value="반려동물 동반 가능">반려동물 동반 가능</option>
							</select>
						
							<select name="is-price">
								<option value="유료">유료</option>
								<option value="무료">무료</option>
							</select>
							
					</div>
				</div>

				<div class="btn-box">
					<button type="button" class="pre-btn" id="next-btn">이전</button>
					<button type="submit" class="next-btn" id="next-btn">다음</button>
				</div>
			</form>
		</div>
	</div>

	<script>
		// DOM으로 option 유료로 선택된 select는 hotelAddOpt에 저장 option이 무료인 select는 convenient에 저장 
		// convenient에 opentime closetime 그냥 삭제해버리기
		// select의 name을 conType으로 저장하기
		function register4Ok() {
			var f=document.register4Form;
			var s=f.convenientName.value;
			if(!s) {
				alert("편의시설명을 입력해주세요.");
				f.zip.focus();
				return;
			}
			
			f.action="<%=cp%>/owner/hotelRegister/register4";
			f.submit();
		}
		
		var name = document.getElementsByName("is-price")
		name[1].style.visibility ='hidden';
		name[2].style.visibility ='hidden';
		name[3].style.visibility ='hidden';
		name[4].style.visibility ='hidden';
		name[5].style.visibility ='hidden';
		name[6].style.visibility ='hidden';
		
		// 작동 안 함 으떠케 만들어야할지 모르겠덩 ㅎㅎ
		function isPrice(){
			var select = document.getElementsByClassName("selectForm")		
			var name = document.getElementsByName("is-price")
		
			if(select.options[select.selectedIndex].value != 'none'){
			name[0].show();
			} else if(select.options[select.selectedIndex].value == 'none'){
			name[0].hide();
			}
			
			
			if(select.options[select.selectedIndex].value != 'none'){
			name[1].show();
			} else if(select.options[select.selectedIndex].value == 'none'){
			name[1].hide();
			}
			
			if(select.options[select.selectedIndex].value != 'none'){
			name[2].show();
			} else if(select.options[select.selectedIndex].value == 'none'){
			name[2].hide();
			}
			
			if(select.options[select.selectedIndex].value != 'none'){
			name[3].show();
			} else if(select.options[select.selectedIndex].value == 'none'){
			name[3].hide();
			}
			
			if(select.options[select.selectedIndex].value != 'none'){
			name[4].show();
			} else if(select.options[select.selectedIndex].value == 'none'){
			name[4].hide();
			}
			
			if(select.options[select.selectedIndex].value != 'none'){
			name[5].show();
			} else if(select.options[select.selectedIndex].value == 'none'){
			name[5].hide();
			}
			
			if(select.options[select.selectedIndex].value != 'none'){
			name[6].show();
			} else if(select.options[select.selectedIndex].value == 'none'){
			name[6].hide();
			}
		}
			
	</script>
</body>
</html>