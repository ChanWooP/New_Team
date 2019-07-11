<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#form-sday").datepicker({showMonthAfterYear:true});
	$("#form-eday").datepicker({showMonthAfterYear:true});
});
 
</script>


<style type="text/css">

.hoteldetail {
	margin: 0px auto;
	text-align: center;
	width: 800px;
	background: #ffffaa;
	border: 1px solid #000000;
	padding-bottom: 20px;
}	

.room {
	margin:15px auto;
	width: 700px;
	text-align: center;
	border: 1px solid #000000;
	background: #ffffe6;
}

.room img {
	width: 200px;
	height: 100px;
	padding: 5px 5px auto;
}

.room tr {
	border: 1px solid #000000;
	
}

.room tr td {
	border: 1px solid #000000;
	width:100px;
	text-align: center;
}

.room tr th {
	border: 1px solid #000000;
	text-align: center;
}

.hotelname {
	margin:15px auto;
	border: 1px solid #000000;
	width:80%;
	background: #ffffe6;
}

.convenient {
	margin:15px auto;
	border: 1px solid #000000;
	width:80%;
	background: #ffffe6;
}

.carousel-inner > .item > img {
	margin:auto;
	width:600px;
	height:350px;
	background:#ffffaa;
}

.right carousel-control{
	background:#ffffaa;
}

.subSearch {
	height:100px;
	padding:10px 10px;
	margin:20px 0px;
	text-align: center;
	background: #E9F0FA;
}

.subSearchWrapper {
	height:50px;
	margin:10px 10px;
	padding:10px 10px;
	text-align: center;
	background: #E9F0FA;
	border:1px solid black;
	min-width: 1100px;
}


</style>

<div class="body-container">
	<div style="padding-top:5px; padding-bottom: 50px;">
		<div class="subSearch">
			<div class="subSearchWrapper">
				<label>목적지</label>
				<input type="text" name="place">
				<label>체크인 날짜</label>
				<input type="text" name="checkinday" id="form-sday" readonly="readonly"> 
				<label>체크아웃 날짜</label>
				<input type="text" name="checkoutday" id="form-eday" readonly="readonly"> 
				<label>인원</label>
				<input type="text" name="pnum">	
				<label>인원</label>
				<button>검색</button>		
			</div>
		</div>	
		
		
		<div class="hoteldetail">
			<c:forEach var="dto" items="${details}">
			<div class="hotelname">
			
				<h3>${dto.hotelName}</h3>
				<small>${dto.addr1}, ${dto.addr2}</small>
			
			</div>
			<div class="imgshow">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators" >
						<c:forEach var="dto" items="${plist}" varStatus="status">
    						<li data-target="#myCarousel" data-slide-to="${status.index}" ${status.index==0?"class='active'":""}></li>
    					</c:forEach>
 					 </ol>
 					 
 					<div class="carousel-inner">
 						<c:forEach var="dto" items="${plist}" varStatus="status">
							<div class="item ${status.index==0?'active':''}">
						    	<img src="<%=cp%>/resource/images/${dto.hotelphotoName}.jpg" alt="">
						    </div>
					    </c:forEach>
					</div>
					  
					<a class="left carousel-control" href="#myCarousel" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>				  
			</div>
				
				<div class="convenient">
					<p>편의시설</p>
					<p>${dto.detail}</p>
				</div>
			</c:forEach>
			
				<table class="room">
					<tr>
						<th>방유형</th>
						<th>방 세부사항</th>
						<th>최대 수용인원</th>
						<th>총가격</th>
						<th></th>
					</tr>
					
					<c:forEach var="dto" items="${rlist}">
						<tr>
							<td><p>${dto.roomtype}</p><img src="<%=cp%>/resource/img/logo.jpg"></td>
							<td>${dto.roomdetails}</td>
							<td>${dto.maxpeople}</td>
							<td>${dto.roomprice}</td>
							<td><button>예약하기</button></td>
						</tr>
					</c:forEach>
				</table>		
		</div>
	</div>
</div>