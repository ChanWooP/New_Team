<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<script type="text/javascript">

$(function(){
	$(".wishDeleteBtn").click(function(){
		var userId="${sessionScope.member.userId}";
		if(! userId){
			location.href ="<%=cp%>/user/member/login";
			return false;
		}
		var hotelId = $(this).attr("data-hotelId");
		var userId=userId;
		location.href ="<%=cp%>/user/wishlist/delete?hotelId="+hotelId+"&userId="+userId;
	});
});
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
			<div>
				총 ${wishlistCount} 개  ${current_page}/ ${total_page}
			</div>
			<table class="wishList">
				<tr>
					<th>호텔명</th>
					<th>주소</th>
					<th>특징</th>
					<th>대표사진</th>
					<th></th>
				</tr>
				<c:forEach var="dto" items="${list}">
					<tr>
						<td><a>${dto.hotelName}</a></td>
						<td>${dto.addr1}, ${dto.addr2}</td>
						<td>${dto.detail}</td>
						<td>${dto.mainphoto}</td>
						<td><button type="button" class="wishDeleteBtn" data-hotelId="${dto.hotelId}">삭제하기</button></td>
					</tr>
				</c:forEach>
			</table>
			${paging}
		</div>
	</div>
</div>