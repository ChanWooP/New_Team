<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<script type="text/javascript">
$(function(){
	$(".wishlistChange").click(function(){
		var userId="${sessionScope.member.userId}";
		if(! userId){
			location.href ="<%=cp%>/user/member/login";
			return false;
		}
		
		var $btn=$(this);
		
		var hotelId = $(this).attr("data-hotelId");
		var addr1 = $(this).attr("data-addr1");
		var url ="<%=cp%>/user/wishlist/add";
		var userId=userId;
		
		$.ajax({
			type:"post"
			, url:url
			, data:{hotelId:hotelId, addr1:addr1, userId:userId}
			, dataType:"json"
			, success:function(data){
				var result=data.result;
				if(result==1) {
					$btn.find("span").removeClass("glyphicon-star-empty");
					$btn.find("span").addClass("glyphicon-star");
				} else if (result==0) {
					$btn.find("span").removeClass("glyphicon-star");
					$btn.find("span").addClass("glyphicon-star-empty");
				}
			}, beforeSend : function(jqXHR) {
		        jqXHR.setRequestHeader("AJAX", true);
		    }
		});
		
		
	});
});

</script>


<style type="text/css">

.showHotelList {
	margin : 0 auto;
	text-align: center;
}

.showHotelList tr {
	padding : 0 auto;
}

.showHotelList td {
	padding :30px;
	
	margin:30px;	
}
.showHotelList .detail{
	width:550px;
}
.showHotelList img {
	width:300px; 
	height:150px;
}

.msg {
	padding-top:20px;
	text-align: center;
}

</style>

<div class="body-container">
	<div style="padding-top: 30px; padding-bottom: 20px;">
		<div class="panel panel-warning">
		<div class="panel-heading">
				<h2>호텔 정보 확인하기</h2> 검색 결과 : ${hotelCount} 개
		</div>
		
		<div class="panel-body">
			<table class="showHotelList">
			<c:forEach var="dto" items="${list}">
			<tr>
				<td>
				   <c:set var="chk" value="0"/>	
				   <c:if test="${not empty idlist}">
				   		<c:forEach var="vo" items="${idlist}">
				        	<c:if test="${vo.hotelId==dto.hotelId}">
				        		<c:set var="chk" value="1"/>
				        	</c:if>
				        </c:forEach>
				   </c:if>
	
				   <c:choose>
				   		<c:when test="${chk==1}">
				   		   <button type="button" data-hotelId="${dto.hotelId}" data-addr1="${dto.addr1}" class="wishlistChange"><span class="glyphicon glyphicon-star"></span></button>
				   		</c:when>
				   		<c:otherwise>
				   		   <button type="button" data-hotelId="${dto.hotelId}" data-addr1="${dto.addr1}" class="wishlistChange"><span class="glyphicon glyphicon-star-empty"></span></button>
				   		</c:otherwise>
				   </c:choose>
				   
				</td>
				<td><a href="<%=cp%>/user/hotel/detail?hotelName=${dto.hotelName}&checkinday=${checkinday}&checkoutday=${checkoutday}&peoplecount=${peoplecount}">${dto.hotelName}</a></td>
				<td>${dto.addr1},&nbsp;${dto.addr2}</td>
				<td class="detail">${dto.detail}</td>
				<td><img src="<%=cp%>/resource/images/hotel/${dto.mainphoto}.jpg"></td>
			</tr>
			</c:forEach>
		</table>
			${paging}	
		</div>
		
	
		<div class="msg">
			<p> 더많은 정보를 보실려면 원하시는 호텔을 선택하세요.</p>
		</div>
	</div>
</div>
</div>