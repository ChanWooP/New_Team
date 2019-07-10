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
			
			document.getElementById('zip').value = data.zonecode;
			document.getElementById('addr1').value = fullRoadAddr;
			document.getElementById('addr2').focus();
		}
	}).open();
}

function hotok(){
var f = document.hotForm;
	
	var str = f.name.value;
	if(!str){
		alert("명소이름을 입력하세요");
		f.name.focus();
		return;
	}
	
	str = f.km.value;
	if(!str){
		alert("명소거리를 입력하세요");
		f.km.focus();
		return;
	}
	
	str = f.zip.value;
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
	
	f.name.value = "";
	f.km.value = "";
	f.zip.value = "";
	f.addr1.value = "";
	f.addr2.value = "";
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
	  			<label for="name">명소이름:</label>
	  			<input type="text" class="form-control" id="name" style="width:20%">
			</div>
			<div class="form-group">
	  			<label for="km">거리(Km):</label>
	  			<input type="text" class="form-control" id="km" style="width:13%">
			</div>
			<div class="form-group">
	  			<label for="addr">주소:</label>
	  			<input type="text" class="form-control" id="zip" style="width:10%">
	  			<input type="text" class="form-control" id="addr1" style="width:50%">
	  			<input type="text" class="form-control" id="addr2" style="width:50%">
	  			<button type="button" class="btn" onclick="execDaumPostcode()">주소찾기</button>
			</div>
			<div class="form-group">
	  			<label for="km">명소사진:</label>
	  			<input type="file" class="form-control" id="upload" style="width:40%">
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