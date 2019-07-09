<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>
<script type="text/javascript">
function hotAdd(){
	location.href="<%=cp%>/owner/hotplace/created";
}
</script>
	<div class="container">
		<div style="margin-top:10px;">
			<strong style="font-size:30px">명소관리</strong>
			<button type="button" class="btn" style="float:right;" onclick="hotAdd()">명소추가</button> 
			<hr style="width: 100%; color: black; height: 1px; background-color:black; margin-top:0px; margin-bottom:10px" />
		</div>
		<table style="width:100%">
			<tr style="border:1px solid gray;">
				<td style="padding:5px;" width="30%"><img src="<%=cp%>/resource/images/pic02.jpg" width="300px" height="200px"></td>
				<td style="padding:5px; padding-left:10px; font-size:20px;" width="70%" align="left">
					<strong>장소명 :</strong> 갯바위s<br><br>
					<strong>숙소와의 거리 :</strong> 1km<br><br>
					<strong>주소 :</strong> 200-100 경기도 김포시 사우동 300 갯바위마을<br>
					<div style="float:right;">
						<button type="button" class="btn">수정</button>
						<button type="button" class="btn">삭제</button>
					</div>
				</td>
			</tr>
			<tr><td><br></td></tr>
		</table>
</div>