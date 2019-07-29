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

.post-form {
	width: 300px;
	height: 30px;
	border: solid 1px #A9A9A9;
	border-radius: 2px;
	margin-bottom: 10px;
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
					href="#">예약 설정 관리</a></li>
				<li><i class="fas fa-check" style="color: #3B1E1E"></i><a
					href="#">사진</a></li>
				<li><i class="fas fa-check" style="color: #3B1E1E"></i><a
					href="#">숙소 판매</a></li>
			</ul>
		</div>

		<div class="contents-container">
			<form method="post" enctype="multipart/form-data" name="register1Form">
				<div class="title-box">
					<div class="title">숙소를 찾고 있는 여행객들을 정확히 사로잡아보세요!</div>
					<div class="description">선택 사항 표시가 없는 한 모든 정보는 필수 항목입니다.</div>
				</div>
				<div class="big-contents-box">
					<div class="big-title">숙소</div>
					<div class="small-contents-box">
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
						<input type="hidden" name="hotelType" value="">
					</div>
					
					<div class="small-contents-box">
						<div class="small-title">숙소 크기</div>
						<input type="text" class="small-form" name="hotelSize">㎡
					</div>
				</div>
				
				<div class="big-contents-box">
					<div class="big-title">체크인 시간</div>
					<div>체크인 시간을 입력해주세요.(00:00)</div>
					<input type="text" class="post-form" name="checkIn">
				</div>
				
				<div class="big-contents-box">
					<div class="big-title">체크아웃 시간</div>
					<div>체크아웃 시간을 입력해주세요.(00:00)</div>
					<input type="text" class="post-form" name="checkOut">
				</div>

				<div class="big-contents-box">
					<div class="big-title ">전화번호</div>
					<div>숙소에 연락하기위한 번호를 알려주세요.(010-0000-0000)</div>
					<input type="text" class="post-form" name="hotelTel">
				</div>
				
				<div class="big-contents-box">
					<div class="big-title ">전화번호</div>
					<div>호텔이 몇성급인지 알려주세요.</div>
					<input type="text" class="post-form" name="grade">
				</div>
				
				<div class="big-contents-box">
					<div class="big-title ">사업자번호</div>
					<div>사업자번호를 입력해주세요</div>
					<input type="text" class="post-form" name="businessNum">
				</div>
				

	<!-- 		
				이것도 마찬가지로 상세등록페이지에서 방 등록하면서 입력받도록 만들기 일단 폼 주석처리해놨음 나중에 롬기기
				<div class="big-contents-box">
					<div class="big-title ">객실 및 세부 정보</div>
					<div class="small-title">총 층 수</div>
					<div class="form-row">
						<button type="button" class="plus-btn">+</button>
						<input type="text" name="stair" class="plus-minus-input">
						<button type="button" class="minus-btn">-</button>
					</div>
				</div>
				
				승인 후 상세등록 페이지에서 처리하도록 만들기
				roomname에 호수 저장 
				 방이나 옵션 등은 하나가 아니라 여러번 인서트 해야함 해당 부분 컨트롤러에서 어떻게 처리? roomCount만큼 돌려서 insert?
				 hotelType과 stair hiddenForm으로 데아터 넣어놓고 보내도록 하고 스크립트로 추가 구현하기 
				 방마다 요금 압력 받도록 폼 추가하기
				<div class="big-contents-box">
					<div class="big-title ">총 객실 수</div>
					<div class="form-row">
						<button type="button" class="plus-btn">+</button>
						<input type="text" name="roomCount" class="plus-minus-input">
						<button type="button" class="minus-btn">-</button>
					</div>
				</div>
				
				등록 완료 후 승인되고 나면 따로 등록하도록 만들기! 일단 주석처리 해놓고 나중에 옮기기
				<div class="big-contents-box">
					<div class="big-title ">
						방이름(호수): <input type="text" id="big-form" name="roomName">
					</div>

					<div class="small-contents-box">
						<div class="small-title">방 사진</div>
						<div class="description">방사진을 업로드해주세요.</div>
						<input type="file" name="hotelPhoto">
					</div>

					<div class="small-contents-box">
						<div class="small-title">방 크기</div>
						<div class="description">방의 평수를 입력해주세요.</div>
						<input type="text" class="small-form" name="roomSize">㎡
					</div>

					<div class="small-contents-box">
						<div class="small-title">요금</div>
						<div class="description">방의 기본 요금을 입력해주세요.</div>
						<input type="text" class="small-form" name="roomPrice">원
						옵션변동에 따른 요금 추가 넣어줘야하나?
					</div>

					<div class="small-contents-box">
						<div class="small-title">숙박 가능 인원</div>
						<div class="description">총 침대 공간과 소파를 고려해 볼 때 편안하게 숙박할 수 있는
							최대 인원 수를 입력해주세요.</div>

						<div class="form-row">
							<button type="button" class="plus-btn">+</button>
							<input type="text" name="maxPeople" class="plus-minus-input">
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
							<input type="text" class="plus-minus-input" name="bedCount">
							<button type="button" class="minus-btn">-</button>
						</div>
						<div>
							<button type="button">침대 추가</button>
						</div>
					</div>

					<div class="small-contents-box">
						<div class="small-title">욕실 수</div>
						<div class="description">숙소 건물/빌딩 혹은 단지에 있는 공용/공동 욕실이 아닌, 해당
							숙소에 있는 욕실만을 세어 입력하세요.</div>
						<div class="form-row">
							<button type="button" class="plus-btn">+</button>
							<input type="text" class="plus-minus-input" name="bathRoomCount">
							<button type="button" class="minus-btn">-</button>
						</div>
					</div>
				</div> -->
				<div class="btn-box">
				<!-- 양식 다시제출 어떻게 해결? -->
					<button type="button" class="next-btn" id="next-btn" onclick="register1Ok();">다음</button>
				</div>
			</form>
		</div>
	</div>

	<script type="text/javascript">
	
	function hotelType(){
		
		return;
	}
	
	function register1Ok() {
		var f=document.register1Form;
		var s=f.hotelType.value;
		if(!s) {
			alert("숙박업소의 종류를 선택해주세요.");
			return;
		}
		
		s=f.hotelSize.value;
		if(!s) {
			alert("숙박업소 크기를 입력해주세요.");
			f.hotelSize.focus();
			return;
		}
		
		s=f.checkIn.value;
		if(!s) {
			alert("체크인 시간을 입력해주세요");
			f.checkIn.focus();
			return;
		}
		
		s=f.checkOut.value;
		if(!s) {
			alert("체크아웃 시간을 입력해주세요");
			f.checkOut.focus();
			return;
		}
		
		s=f.hotelTel.value;
		if(!s) {
			alert("연락을 위한 전화번호를입력해주세요");
			f.hotelTel.focus();
			return;
		}
		
		s=f.grade.value;
		if(!s) {
			alert("호텔등급을 선택해주세요");
			f.grade.focus();
			return;
		}
		
		s=f.businessNum.value;
		if(!s) {
			alert("사업자번호를 입력해주세요");
			f.businessNum.focus();
			return;
		}
		
		/* 
		스크립트도 일단 주석처리해놓고 나중에 옮기기
		s=f.roomCount.value;
		if(!s) {
			alert("객실 수를 입력해주세요");
			f.roomCount.focus();
			return;
		}
		
		s=f.roomName.value;
		if(!s) {
			alert("방이름 혹은 방 호수를 입력해주세요.");
			f.roomName.focus();
			return;
		}
		
		s=f.roomSize.value;
		if(!s) {
			alert("방의 크기를 입력해주세요.");
			f.roomSize.focus();
			return;
		}
		
		s=f.roomPrice.value;
		if(!s) {
			alert("방 가격을 입력해주세요.");
			f.roomPrice.focus();
			return;
		}
		
		s=f.maxPeople.value;
		if(!s) {
			alert("최대 몇 명까지 숙박이 가능한지 입력해주세요.");
			f.maxPeople.focus();
			return;
		}
		
		s=f.bedCount.value;
		if(!s) {
			alert("침대의 개수를 입력해주세요");
			f.bedCount.focus();
			return;
		}	
		
		s=f.bathroomCount.value;
		if(!s) {
			alert("욕실의 개수를 입력해주세요");
			f.bathRoomCount.focus();
			return;
		}	 
		
		s=f.roomPhoto.value;
		if(!s) {
			alert("최소 하나의 방 사진을 업로드해주세요.");
			f.bathRoomCount.focus();
			return;
		}	
		*/
		
		s=f.hotelPhoto.value;
		if(!s) {
			alert("최소 하나의 호텔 사진을 업로드해주세요.");
			f.bathRoomCount.focus();
			return;
		}	
		
		s=f.mainPhoto.value;
		if(!s) {
			alert("대표 사진을 업로드해주세요.");
			f.bathRoomCount.focus();
			return;
		}	
		
		f.action="<%=cp%>/owner/hotelRegister/register1";
		f.submit();
	}

	</script>
</body>
</html>