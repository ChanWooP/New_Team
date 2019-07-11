<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<style type="text/css">

.showHotelList {
	border: 1px solid black;
	margin : 0 auto;
	text-align: center;
}

.showHotelList tr {
	padding : 0 auto;
}

.showHotelList td {
	padding :10px;
	border: 1px solid black;
	margin:10px;	
}
.showHotelList .detail{
	width:350px;
}
.showHotelList img {
	width:300px; 
	height:150px;
}

.showsearch {
	width:300px; 
	height:50px;
}

.msg {
	padding-top:20px;
	text-align: center;
}

.subSearch {
	height:100px;
	padding:10px 10px;
	margin:20px 0px;
	text-align: center;
	background: #E9F0FA;
}

.subSearchWrapper {
	height:50px;
	margin:10px 10px;
	padding:10px 10px;
	text-align: center;
	background: #efefef;
	border:1px solid black;
}
</style>

<div class="body-container">
	<div style="padding-top: 10px; padding-bottom: 20px;">
		<h2>호텔 정보 확인하기</h2>
		<div class="subSearch">
			<div class="subSearchWrapper">
				<label>목적지</label>
				<input type="text">
				<label>체크인 날짜</label>
				<input type="text">
				<label>체크아웃 날짜</label>
				<input type="text">
				<label>인원</label>
				<input type="text">	
				<label>인원</label>
				<button>검색</button>		
			</div>
		</div>	

		<table class="showHotelList">
			<tr>
			<c:forEach var="dto" items="${list}">
				<td><button>찜하기</button></td>
				<td><a href="<%=cp%>/user/hotel/detail?hotelName=${dto.hotelName}">${dto.hotelName}</a></td>
				<td>${dto.addr1},&nbsp;${dto.addr2}</td>
				<td class="detail">${dto.detail}</td>
				<td><img src="<%=cp%>/resource/images/${dto.mainphoto}.jpg"></td>
			</c:forEach>
			</tr>
		</table>	
		<div class="msg">
			<p> 더많은 정보를 보실려면 원하시는 호텔을 선택하세요.</p>
		</div>
	</div>
</div>