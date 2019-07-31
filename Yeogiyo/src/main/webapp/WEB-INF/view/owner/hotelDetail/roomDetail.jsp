<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 이것도 마찬가지로 상세등록페이지에서 방 등록하면서 입력받도록 만들기 일단 폼 주석처리해놨음 나중에 롬기기 -->
	<div class="big-contents-box">
		<div class="big-title ">객실 및 세부 정보</div>
		<div class="small-title">총 층 수</div>
		<div class="form-row">
			<button type="button" class="plus-btn">+</button>
			<input type="text" name="stair" class="plus-minus-input">
			<button type="button" class="minus-btn">-</button>
		</div>
	</div>

	<!-- 승인 후 상세등록 페이지에서 처리하도록 만들기
		 roomname에 호수 저장 
		  방이나 옵션 등은 하나가 아니라 여러번 인서트 해야함 해당 부분 컨트롤러에서 어떻게 처리? roomCount만큼 돌려서 insert?
		 hotelType과 stair hiddenForm으로 데아터 넣어놓고 보내도록 하고 스크립트로 추가 구현하기 
		 방마다 요금 압력 받도록 폼 추가하기 -->
	<div class="big-contents-box">
		<div class="big-title ">총 객실 수</div>
		<div class="form-row">
			<button type="button" class="plus-btn">+</button>
			<input type="text" name="roomCount" class="plus-minus-input">
			<button type="button" class="minus-btn">-</button>
		</div>
	</div>

	<!-- 등록 완료 후 승인되고 나면 따로 등록하도록 만들기! 일단 주석처리 해놓고 나중에 옮기기 -->
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
			<div class="description">총 침대 공간과 소파를 고려해 볼 때 편안하게 숙박할 수 있는 최대
				인원 수를 입력해주세요.</div>

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
	</div>

	<script>
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
		</script>
</body>
</html>