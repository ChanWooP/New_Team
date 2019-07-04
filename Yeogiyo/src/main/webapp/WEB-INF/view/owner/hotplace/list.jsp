<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>
<script type="text/javascript">
</script>
<div class="cbody-container">
	<h3>명소관리</h3>
	<hr>
	<table class="ctable-hotplace">
		<tr class="ctr-hotplace">
			<td width="30%"><img src="<%=cp%>/resource/img/logo.jpg" class="cimg-hotpalce"></td>
			<td align="left" valign="bottom" style="padding-bottom:10px;">
				<strong>장소명 :</strong> 갯바위<br><br>
				<strong>숙소와의 거리 :</strong> 1km<br><br>
				<strong>주소 :</strong> 200-100 경기도 김포시 사우동 300 갯바위마을<br><br>
				<button type="button" class="cbutton-hotplace">수정</button>
				<button type="button" class="cbutton-hotplace">삭제</button>
			</td>
		</tr>
		<tr><td><br></td></tr>
	</table>
</div>