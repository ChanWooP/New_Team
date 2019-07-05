<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<style type="text/css">

.hoteldetail {
	margin: 0px auto;
	text-align: center;
	width: 800px;
	background: #ff0000;
	border: 1px solid #000000;
	padding-bottom: 20px;
}	

.hoteldetail img,textarea{
	width:500px;
}

.roomtab {
	margin:15px auto;
	width: 700px;
	text-align: center;
	border: 1px solid #000000;
	background: #e4e4e4;
}

.roomtab img {
	width: 200px;
	height: 100px;
}

.roomtab tr {
	border: 1px solid #000000;
}

.roomtab tr td {
	border: 1px solid #000000;
	width:100px;
}

.roomtab tr th {
	border: 1px solid #000000;
}

.hotelname {
	margin:15px auto;
	border: 1px solid #000000;
	width:80%;
	background: #e4e4e4;
}

.convenient {
	margin:15px auto;
	border: 1px solid #000000;
	width:80%;
	background: #e4e4e4;
}
</style>

<div class="body-container">
	<div style="padding-top: 30px; padding-bottom: 30px;">
		<div class="hoteldetail">
			<div class="hotelname">
				<h3>호텔 이름</h3>
				<small>부산광역시 해운대구 해운대로570번길 46</small>
			</div>
			<div>
				<p>대표사진</p>
				<img src="<%=cp%>/resource/img/logo.jpg">
			</div>

			<div class="convenient">
				<p>편의시설</p>
				<p>
		
주요 편의 시설		| 가족 편의 시설/서비스	| 주변 명소
407개의 금연 객실	| 냉장고				| 해운대에 위치
해변 근처			| 전용 욕실			| 파라다이스 카지노(걸어서 8분 거리)
레스토랑 및 바/라운지	| TV				| 부산 전시컨벤션센터(걸어서 40분 거리)
루프탑 테라스		| 무료 세면용품			| 신세계 센텀 시티(걸어서 43분 거리)
아침 식사 가능		| 정원				| 부산 아쿠아리움(걸어서 3분 거리)
시즌별로 운영되는 야외 수영장 |  매일 하우스키핑	| 라듐 아트센터(걸어서 8분 거리)
피트니스 센터		|					| 동백공원(걸어서 9분 거리)
24시간 운영되는 비즈니스 센터				| 더베이101(걸어서 10분 거리)

				</p>
				</div>

			<div class="roomtab">
				<table class="room">
					<thead><p>호텔이름</p></thead>
					<tbody>
						<tr>
							<th>객실유형</th>
							<th>선택사항</th>
							<th>최대 수용인원</th>
							<th>총가격</th>
							<th></th>
						</tr>

						<tr>
							<td><p>스탠다드 패밀리룸</p><img src="<%=cp%>/resource/img/logo.jpg"></td>
							<td>아침식사 가능</td>
							<td>3</td>
							<td>80000</td>
							<td><button>예약하기</button></td>
						</tr>
						<tr>
							<td><p>디럭스 더블룸 바다전망</p><img src="<%=cp%>/resource/img/logo.jpg"></td>
							<td>아침식사 가능</td>
							<td>2</td>
							<td>60000</td>
							<td><button>예약하기</button></td>
						</tr>
						<tr>
							<td><p>스탠다드 트윈룸 바다전망</p><img src="<%=cp%>/resource/img/logo.jpg"></td>
							<td>아침식사 가능</td>
							<td>2</td>
							<td>100000</td>
							<td><button>예약하기</button></td>
						</tr>
						<tr>
							<td><p>디럭스 패밀리룸</p><img src="<%=cp%>/resource/img/logo.jpg"></td>
							<td>아침식사 가능</td>
							<td>3</td>
							<td>150000</td>
							<td><button>예약하기</button></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>