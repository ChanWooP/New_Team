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

function detailLoad(hotelName, checkinday, checkoutday, peoplecount){
	location.href = "<%=cp%>/user/hotel/detail?hotelName="+hotelName+"&checkinday="+checkinday+"&checkoutday="+checkoutday+"&peoplecount="+peoplecount;
}

</script>


<style type="text/css">
.showHotelList {
	border: 1px solid #C6C6C6;
	padding: 10px;
	margin-bottom: 10px;
}

.showHotelList:hover{
	background-color:#E9F0F4;
}

.showHotelList td {
	vertical-align: top;
	padding: 5px;
}

.showHotelList .mainPhoto {
	width: 230px;
	height: 180px;
}

.showHotelList .star {
	width: 15px;
	height: 15px;
}


.showHotelList .btn {
	float: right;
}

.showHotelList .wishlistChange {
	float: right;
	background-color:white;
}

.msg {
	padding-top: 20px;
	text-align: center;
}

</style>

<div class="container">
	<div style="padding-top: 30px; padding-bottom: 20px;">
		<div class="panel panel-warning">
			<div class="panel-heading">
				<h2>호텔 정보 확인하기</h2>
				<p>검색 결과 : ${hotelCount} 개</p>
				<span class="glyphicon glyphicon-calendar"></span>체크인 : ${checkinday}&nbsp;|&nbsp;
				<span class="glyphicon glyphicon-calendar"></span>체크아웃 : ${checkoutday}&nbsp;|&nbsp;
				<span class="glyphicon glyphicon-user"></span>인원 : ${peoplecount}명
			</div>
			<div class="panel-body" style="margin: 0 auto;">
			
				<!--  
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
		-->
				<c:forEach var="dto" items="${list}">
					<div class="showHotelList">
						<table>
							<tr>
								<td><img class="mainPhoto"
									src="<%=cp%>/resource/images/hotel/${dto.mainphoto}.jpg"></td>
								<td>
									<h3>
										<a
											href="<%=cp%>/user/hotel/detail?hotelName=${dto.hotelName}&checkinday=${checkinday}&checkoutday=${checkoutday}&peoplecount=${peoplecount}">${dto.hotelName}</a>
										<c:set var="chk" value="0" />
										<c:if test="${not empty idlist}">
											<c:forEach var="vo" items="${idlist}">
												<c:if test="${vo.hotelId==dto.hotelId}">
													<c:set var="chk" value="1" />
												</c:if>
											</c:forEach>
										</c:if>

										<c:choose>
											<c:when test="${chk==1}">
												<button type="button" data-hotelId="${dto.hotelId}"
													data-addr1="${dto.addr1}" class="wishlistChange">
													<span class="glyphicon glyphicon-star"></span>
												</button>
											</c:when>
											<c:otherwise>
												<button type="button"   data-hotelId="${dto.hotelId}"
													data-addr1="${dto.addr1}" class="wishlistChange">
													<span class="glyphicon glyphicon-star-empty"></span>
												</button>
											</c:otherwise>
										</c:choose>
									</h3>
									<p>
									평점(${dto.scores } 점) :
									<c:if test="${dto.score==0 }">
										<img class="star" src="<%=cp%>/resource/images/hotel/star.jpg">
									</c:if>
									<c:forEach var="i" begin="1" end="${dto.score/2 }">
										<img class="star" src="<%=cp%>/resource/images/hotel/star.jpg">
									</c:forEach>
									</p>
									<p>${dto.addr1},&nbsp;${dto.addr2}</p>
									<p>${dto.detail}</p>
									<p>
										<button type="button" class="btn"
											onclick="detailLoad('${dto.hotelName}','${checkinday}','${checkoutday}','${peoplecount}')">자세히보기
											></button>
									</p>
								</td>
							</tr>
						</table>
					</div>
				</c:forEach>
				${paging}
			</div>


			<div class="msg">
				<p>더많은 정보를 보실려면 원하시는 호텔을 선택하세요.</p>
			</div>
		</div>
	</div>
</div>