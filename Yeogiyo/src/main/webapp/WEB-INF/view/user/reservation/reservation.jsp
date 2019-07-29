<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   String cp=request.getContextPath();
%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style type="text/css">
.checkUser #name,#tel,#email,#cardNum,.card,#secureNum{
	font-size: 14px;
    line-height: 18px;
    margin-top: 0;
    margin-bottom: 0;
    margin-right: 8px;
    height: 32px;
    width:266px;
    
}
.reservation {
	clear:both;
	height:600px;
}
.reservationLeft{
	text-align: center;
	float: left;
	width:450px;
	padding-left: 100px;
}
</style>

<div class="body-container">
	<div style="padding: 40px 0;">
		<div class="reservation">
			<div class="reservationLeft">
				<div class="panel panel-warning class">
					    <div class="panel-heading">방 </div>
					    <div class="panel-body">${resdetail.roomname}</div>
				</div>
				<div class="panel panel-warning class">
					    <div class="panel-heading">층수</div>
					    <div class="panel-body">${resdetail.stair}층</div>
				</div>
				<div class="panel panel-warning class">
					    <div class="panel-heading">방유형</div>
					    <div class="panel-body">${resdetail.roomtype}</div>
				</div>
				<div class="panel panel-warning class">
					    <div class="panel-heading">최대인원</div>
					    <div class="panel-body">${resdetail.maxpeople}</div>
				</div>
				<div class="panel panel-warning class">
					    <div class="panel-heading">세부사항</div>
					    <div class="panel-body">${resdetail.roomdetails}</div>
				</div>
			</div>
			
			<div class="reservationLeft">
				<form  method="post" class="checkUser" action="<%=cp%>/user/reservation/complete">
					<p>예약자 이름을 입력하세요<br><input type="text" id="name" name="userName"></p><br> 
					<p>예약자 전화번호를 입력하세요<br><input type="text" id="tel" name="userTel"></p><br>
					<p>예약자 이메일을 입력하세요<br><input type="text" id="email" name="userEmail"></p><br>
					<p>카드 종류 <br>
						<select class="card">
							<option value="">카드선택</option>
							<option value="신한">신한카드</option>
							<option value="농협">농협카드</option>
							<option value="LG">LG카드</option>
							<option value="현대">현대카드</option>
							<option value="롯데">롯데카드</option>
						</select>
					</p>
					<br>
					<p>카드번호<br><input type="text" id="cardNum" name="cardNum"></p><br>
					<p>만료일자<br><input type="text" id="endedyear" name="endedyear" style="width:30px"placeholder="년"> / <input type="text" id="endedmonth" name="endedmonth" style="width:30px" placeholder="월"></p><br>
					<p>보안코드<br><input type="password" id="secureNum" name="secureNum"></p><br>
					<input type="hidden" name="roomname" value="${resdetail.roomname}">
					<input type="hidden" name="checkinday" value="${checkinday}">
					<input type="hidden" name="checkoutday" value="${checkoutday}">
					<input type="hidden" name="stair" value="${resdetail.stair}">
					<input type="hidden" name="roomtype" value="${resdetail.roomtype}">
					<input type="hidden" name="roomdetails" value="${resdetail.roomdetails}">
					<input type="hidden" name="roomprice" value="${resdetail.roomprice}">
					<input type="hidden" name="hotelId" value="${hotelId}">
					<input type="hidden" name="roomnum" value="${roomnum}">
					<input type="hidden" name="peoplecount" value="${peoplecount}">
					
					<c:forEach var ="opt" items="${optlist}">
						<input type="hidden" name="optNum" value="${opt.optNum}">
						<input type="hidden" name="optCount" value="${optCount}">
						<input type="hidden" name="optPrice" value="${opt.optPrice}">
						<input type="hidden" name="optName" value="${opt.optName}">
						<input type="hidden" name="tot" value="${opt.optPrice+resdetail.roomprice}">
					</c:forEach>
					
					<button type="submit">예약하기</button>
					
					
				</form>
			</div>
				
		
			<div class="reservationLeft">
			    <c:set var="tot" value="0"/>
				<div class="panel panel-warning class">
				    <div class="panel-heading">체크인 날짜</div>
				    <div class="panel-body">${checkinday}</div>
			   	</div>
			   	<div class="panel panel-warning class">
				    <div class="panel-heading">체크아웃 날짜</div>
				    <div class="panel-body">${checkoutday}</div>
			   	</div>
			   	<div class="panel panel-warning class">
				    <div class="panel-heading">방가격</div>
				    <div class="panel-body">${resdetail.roomprice}
				    <c:set var="tot" value="${tot + resdetail.roomprice}"/></div>
			   	</div>
			   	
			   	<div class="panel panel-warning class">
				    <div class="panel-heading">옵션</div>
				    <div class="panel-body">
				    	<c:forEach var ="opt" items="${optlist}">
					 	   ${opt.optName}
					 	   
					    </c:forEach>
				    </div>
			   	</div>
			   	<div class="panel panel-warning class">
				    <div class="panel-heading">옵션가격</div>
				    <div class="panel-body">
					    <c:forEach var ="opt" items="${optlist}">
					  		${opt.optPrice}
					  		<c:set var="tot" value="${tot + opt.optPrice}"/>
					    </c:forEach>
				    </div>
			   	</div>
			   	<div class="panel panel-warning class">
				    <div class="panel-heading">총가격</div>
				    <div class="panel-body">${tot}</div>
			   	</div>
			   	
			</div>
		</div>
	</div>
</div>