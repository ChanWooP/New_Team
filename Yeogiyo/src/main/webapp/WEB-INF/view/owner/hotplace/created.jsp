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
</script>
<div class="container">
	<div style="margin-top:10px;">
		<strong style="font-size:30px">명소추가</strong>
		<hr style="width: 100%; color: black; height: 1px; background-color:black; margin-top:0px; margin-bottom:10px" />
		<div style="width:50%;">
		<form name="hotForm" method="post" enctype="multipart/form-data">
			<div class="form-group">
	  			<label for="name">명소이름:</label>
	  			<input type="text" class="form-control" id="name" style="width:40%">
			</div>
			<div class="form-group">
	  			<label for="km">거리(Km):</label>
	  			<input type="text" class="form-control" id="km" style="width:25%">
			</div>
			<div class="form-group">
	  			<label for="addr">주소:</label>
	  			<input type="text" class="form-control" id="zip" style="width:20%">
	  			<input type="text" class="form-control" id="addr1">
	  			<input type="text" class="form-control" id="addr2">
	  			<button type="button" class="btn" onclick="execDaumPostcode()">주소찾기</button>
			</div>
			<div class="form-group">
	  			<label for="km">명소사진:</label>
	  			<input type="file" class="form-control" id="upload" style="width:40%">
			</div>
		</form>
		</div>
	</div>
</div>