<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
</head>
<body>
<div class="container">
hotelOwner 가입을 위한 화면입니다.
<form name="registerForm">
	hotelName<input type="text" id="hotelName"><br>
	optName<input type="text" id="optName"><br>
	optPrice<input type="text" id="optPrice"><br>
	detail<input type="text" id="detail"><br>
	mainPhoto<input type="text" id="mainPhoto"><br>
	addr1<input type="text" id="addr1"><br>
	addr2<input type="text" id="addr2"><br>
	postCode<input type="text" id="postCode"><br>
	latitude<input type="text" id="latitude"><br>
	longitude<input type="text" id="longitude"><br>
	hotelSize<input type="text" id="hotelSize"><br>
	hotelTel<input type="text" id="hotelTel"><br>
	hotelCreated<input type="text" id="hotelCreated"><br>
	checkIn<input type="text" id="checkIn"><br>
	checkOut<input type="text" id="checkOut"><br>
	businessNum<input type="text" id="businessNum"><br>
	grade<input type="text" id="grade"><br>
	hotelPhotoName<input type="text" id="hotelPhotoName"><br>
	prepareContent<input type="text" id="prepareContent"><br>
	type<input type="text" id="type"><br>
	conName<input type="text" id="conName"><br>
	conType<input type="text" id="conType"><br>
	conOpenTime<input type="text" id="conOpenTime"><br>
	conCloseTime<input type="text" id="conCloseTime"><br>	
	roomName<input type="text" id="roomName"><br>
	stair<input type="text" id="stair"><br>
	roomType<input type="text" id="roomType"><br>
	maxPeople<input type="text" id="maxPeople"><br>
	roomStatus<input type="text" id="roomStatus"><br>
	roomPrice<input type="text" id="roomPrice"><br>
	extraPrice<input type="text" id="extraPrice"><br>
	roomDetails<input type="text" id="roomDetails"><br>
	roomPhotoName<input type="text" id="roomPhotoName"><br>
	
	<button type="button" class="btn" onclick="registerOk()">가입</button>
</form>

<script type="text/javascript">
function registerOk() {
	var f=document.registerForm;
	f.hotelName.value;
	f.optName.value;
	f.optPrice.value;
	f.detail.value;
	f.mainPhoto.value;
	f.addr1.value;
	f.addr2.value;
	f.postCode.value;
	f.latitude.value;
	f.longitude.value;
	f.hotelSize.value;
	f.hotelTel.value;
	f.hotelCreated.value;
	f.checkIn.value;
	f.checkOut.value;
	f.businessNum.value;
	f.grade.value;
	f.hotelPhotoName.value;
	f.prepareContent.value;
	f.type.value;
	f.conName.value;
	f.conCloseTime.value;
	f.roomName.value;
	f.stair.value;
	f.roomType.value;
	f.maxPeople.value;
	f.roomStatus.value;
	f.roomPrice.value;
	f.extraPrice.value;
	f.roomDetails.value;
	f.roomType.value;
	
	
	f.action="<%=cp%>/owner/hotel/register";
	f.submit();
}
</script>
</div>
</body>
</html>