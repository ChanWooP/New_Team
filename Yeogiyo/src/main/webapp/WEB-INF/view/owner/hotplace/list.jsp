<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>
<script type="text/javascript">
</script>
<div class="bodyContainer">
	<div class="container">
		<h3>명소관리s</h3><button type="button" class="btn">수정</button>
		<hr style="width: 100%; color: black; height: 1px; background-color:black;" />
		<table>
			<tr>
				<td><img src="<%=cp%>/resource/images/pic02.jpg" width="300px" height="200px"></td>
				<td align="left" style="padding-left:10px;">
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
</div>