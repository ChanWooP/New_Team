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
<form>
	테스트용 입력 폼입니다. 아직 방과 관련된 부분 제작이 덜 됐으니 마무리 짓고 와서 테스트 제대로 해보기
	지도 API 어떻게 써야하는지 찾아보고 모르겠으면 강사님께 여쭤보기
	<input type="text" id="hotelName"><br>
	<input type="text" id="granted"><br>
	<input type="text" id="optNum"><br>
	<input type="text" id="optName"><br>
	<input type="text" id="optPrice"><br>
	<input type="text" id="detail"><br>
	<input type="text" id="mainPhoto"><br>
	<input type="text" id="addr1"><br>
	<input type="text" id="addr2"><br>
	<input type="text" id="postCode"><br>
	<input type="text" id="latitude"><br>
	<input type="text" id="longitude"><br>
	<input type="text" id="hotelPhotoNum"><br>
	<input type="text" id="hotelPhotoName"><br>
	<input type="text" id="prepareNum"><br>
	<input type="text" id="prepareContent"><br>
	<input type="text" id="typeNum"><br>
	<input type="text" id="type"><br>
	<input type="text" id="conNum"><br>
	<input type="text" id="conName"><br>
	<input type="text" id="conType"><br>
	<input type="text" id="conOpenTime"><br>
	<input type="text" id="conCloseTime"><br>
</form>
</div>
</body>
</html>