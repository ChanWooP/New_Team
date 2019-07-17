<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<script type="text/javascript">
function wishDeleteBtn(){
	
	
	}
</script>

<style type="text/css">

.wish {
	margin-top:50px;
	height:700px;
}
.wishList{
	text-align:center;
	background:#f7f7f7;
	
}

.wishList th{
	text-align:center;
	width: 350px;
	border-bottom: 1px solid #DEC750;
}

.wishList td{
	text-align:center;
	border-bottom: 1px solid #DEC750;
	
}
</style>
<div class="container">
	<div style="padding-top: 10px; padding-bottom: 20px;">
		<h1> 위시리스트</h1>
		<div class="wish">
			<table class="wishList">
				<tr>
					<th>호텔명</th>
					<th>주소</th>
					<th>특징</th>
					<th>대표사진</th>
					<th></th>
				</tr>
				<tr>
					<td>안양호텔</td>
					<td>경기도 안양</td>
					<td>않조음12ㅁㄴㅇ3121ㅇ1ㅇㅁ나ㅓ마ㅓㄴ이마ㅓㅜ피뭠눠ㅏㅍ무나ㅓ문아ㅓ루나어루미ㅏ저 ㅜㅈ더ㅜㄹㅈㄷㄹㄷㄹㅈㄷㄹㅈㄷㄹㅈㄷㅈㄷㄹㅁㄴㅇ</td>
					<td>ㅋ</td>
					<td><button type="button" onclick="wishDeleteBtn()" data-hotelId="">삭제하기</button></td>
				</tr>
			</table>
		</div>
	</div>
</div>