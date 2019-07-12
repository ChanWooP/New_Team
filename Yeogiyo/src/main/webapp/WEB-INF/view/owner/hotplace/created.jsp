<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>
<script type="text/javascript">
function execDaumPostcode() { 
	new daum.Postcode({
		oncomplete:function(data){
			var fullRoadAddr = data.roadAddress;
			var extraRoadAddr = '';
			
			if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				extraRoadAddr += data.bname;
			}
			
			if(data.buildingName !== '' && data.apartment === 'Y'){
				extraRoadAddr += (extraRoadAddr !== '' ? ', '+ data.buildingName : data.build);
			}
			
			if(extraRoadAddr !== '') {
				extraRoadAddr = ' ('+extraRoadAddr+')';
			}
			
			if(fullRoadAddr !== '') {
				fullRoadAddr += extraRoadAddr;
			}
			
			document.getElementById('placeZip').value = data.zonecode;
			document.getElementById('placeAddr1').value = fullRoadAddr;
			document.getElementById('placeAddr2').focus();
		}
	}).open();
}

function hotok(){
var f = document.hotForm;
	
	var str = f.placeName.value;
	if(!str){
		alert("명소이름을 입력하세요");
		f.name.focus();
		return;
	}
	
	str = f.placeDis.value;
	if(!str){
		alert("명소거리를 입력하세요");
		f.km.focus();
		return;
	}
	
	str = f.placeZip.value;
	if(!str){
		alert("명소주소를 입력하세요");
		f.zip.focus();
		return;
	}
	
	str = f.upload.value;
	if(!str){
		alert("명소사진을 입력하세요");
		f.upload.focus();
		return;
	}
	
	f.action="<%=cp%>/owner/hotplace/${mode}";
	f.submit();
}

function hotclear(){
	var f = document.hotForm;
	
	f.placeName.value = "";
	f.placeDis.value = "";
	f.placeZip.value = "";
	f.placeAddr1.value = "";
	f.placeAddr2.value = "";
	f.upload.value = "";
}

function hotcancle(){
	location.href="<%=cp%>/owner/hotplace/list";
}
</script>
<div class="container">
	<div style="margin-top:10px;">
		<strong style="font-size:30px">${subject}</strong>
		<hr style="width: 100%; color: black; height: 1px; background-color:black; margin-top:0px; margin-bottom:10px" />
		<div>
		<form name="hotForm" method="post" enctype="multipart/form-data">
			<div class="form-group">
	  			<label for="placeName">명소이름:</label>
	  			<input type="text" class="form-control" name="placeName" style="width:20%">
			</div>
			<div class="form-group">
	  			<label for="placeDis">거리(Km):</label>
	  			<input type="text" class="form-control" name="placeDis" style="width:13%">
			</div>
			<div class="form-group">
	  			<label for="addr">주소:</label>
	  			<input type="text" class="form-control" name="placeZip" style="width:10%">
	  			<input type="text" class="form-control" name="placeAddr1" style="width:50%">
	  			<input type="text" class="form-control" name="placeAddr2" style="width:50%">
	  			<button type="button" class="btn" onclick="execDaumPostcode()">주소찾기</button>
			</div>
			<div class="form-group">
	  			<label for="upload">명소사진:</label>
	  			<input type="file" class="form-control" name="upload" style="width:40%">
			</div>
			<div style="margin-left:40%; margin-bottom:5%; margin-top:5%;">
			<button type="button" class="btn" onclick="hotok()">확인</button>
			<button type="button" class="btn" onclick="hotclear()">다시입력</button>
			<button type="button" class="btn" onclick="hotcancle()">취소</button>
			</div>
		</form>
		</div>
	</div>
</div>