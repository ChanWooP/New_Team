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
<title>Insert title here</title>
<style>
h2 {
	text-align: center;
}
.contents{
	padding :30px;
	margin:30px;
	background-color:white;	
}
.showhotel {
	 
	width : 75%;
	margin-left: 200px;
	margin-top : 50px;
	height: 200px;
	text-align: center;
	background-color: #FFEB33;
	padding :10px;
}

.showhotel h4 {
	background-color: #FFFCCC;
	text-color: black;
}

.photohotel {
	width:75%;
	margin-left: 200px;
	margin-top : 30px;
	height : 300px;
}

.ready {
	width:75%;
	background-color: #FFFCCC;
	margin-left: 200px;
	margin-top : 30px;
	padding :10px;
}
.location{
	
	width:75%;
	background-color: #FFFCCC;
	margin-left: 200px;
	margin-top : 30px;
	padding :10px;
}

.hotelop{
	width:75%;
	background-color: #FFFCCC;
	margin-left: 200px;
	margin-top : 30px;
	padding :10px;
}
.review
{
	width:75%;
	background-color: #FFFCCC;
	margin-left: 200px;
	margin-top : 30px;
	padding :10px;
}

.showroom
{
	width:75%;
	background-color: #FFFCCC;
	margin-left: 200px;
	margin-top : 30px;
	padding :10px;
}
.showroom a{
	display: inline;
}
.roomSelect{
	border:1px solid black;

}
</style>
</head>
<body>
<div class="body-container">
	<div class="showhotel">
		<c:forEach var="dto" items="list"></c:forEach>
		
			<h4>hotel</h4>
			
			<p>부산광역시 동구 중앙대로296번길 6</p>
			<p>국제 시장 근처에 위치한 3.5성급 호텔, 레스토랑 이용 가능</p>
		
	</div>
	<div class="photohotel">
		<img
			src="https://thumbnails.trvl-media.com/socKs_C_ZQ9NkDr7cpxhBZp0wOw=/773x530/smart/filters:quality(60)/exp.cdn-hotels.com/hotels/6000000/5490000/5480200/5480140/11d54312_z.jpg"
			style="width: 100%; height: 300px;">
	</div>

	<div class="ready">
		<div class="contents">
			<h3><b>호텔 준비사항</b></h3>
			<c:forEach var="dto" items="${details}">
				<p>${dto.detail}</p>
			</c:forEach>	
			<span>애완동물 출입금지</span><span>주류 반입금지</span>
		</div>
	</div>
	<div class="location">
		<div class="contents">
			<h3>호텔위치</h3>
			<br>
			<p>123124124</p>
		</div>
	</div>
	<div class="hotelop">
		<div class="contents"><h3>호텔시설</h3>
			<p>서비스</p>
			<p>인터넷</p>
			<p>체크인 시간</p>
			<p>체크아웃 시간</p>
		</div>
	</div>
	<div class="review">
		<div class="contents">
			<h3>후기</h3>
			<p>123123</p>
			<p>123123</p>
			<p>4</p>
			<p>ㅁㄴㅇㅁㄴㅁ</p>
			<p>ㅁㄴㅇㅁㄴㅇㅁㄴㅇ</p>
			<p>ㅁㄴㅇㅁㄴㅇㅁㄴㅇ</p>
			<p>ㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ</p>
		</div>
	</div>
	<div class="showroom">
		<div class="contents">
			<h3><b>방 리스트</b></h3>
			<table class="roomSelect">
				<tr>
					<th>방이름</th>
					<th>추가옵션</th>
					<th>특징</th>
					<th>가격</th>
				</tr>
			</table>
			<button>예약하기</button>
		</div>
	</div>
</div>
</body>
</html>