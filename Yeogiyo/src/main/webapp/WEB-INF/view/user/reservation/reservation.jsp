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
.checkUser{
	width:650px;
	text-align: center;
	margin: 10px 10px auto;
	border:1px solid black;
	
}

.checkUser #name,#tel,#email,#cardNum,.card,#secureNum{
	font-size: 14px;
    line-height: 18px;
    margin-top: 0;
    margin-bottom: 0;
    margin-right: 8px;
    height: 32px;
    width:266px;
}
.money{
	width:350px;
	padding-left: 100px;
}
.money > div > div{

	text-align: center;
	
}


</style>

<div class="body-container">
<div style="padding: 40px 0;">

	<div>
		<div class="row">
		<div class="col-sm-2"></div>
		    <div class="col-sm-5">
				<form  method="post" class="checkUser">
					<p>예약자 이름을 입력하세요<br><input type="text" id="name" name="name"></p><br> 
					<p>예약자 전화번호를 입력하세요<br><input type="text" id="tel" name="tel"></p><br>
					<p>예약자 이메일을 입력하세요<br><input type="text" id="email" name="email"></p><br>
					<p>카드 종류 <br><select class="card">
						<option value="">카드선택</option>
						<option value="">신한카드</option>
						<option value="">농협카드</option>
						<option value="">신한카드</option>
						<option value="">현대카드</option>
						<option value="">롯데카드</option>
					</select></p><br>
					<p>카드번호<br><input type="text" id="cardNum" name="cardNum"></p><br>
					<p>만료일자<br><input type="text" id="endedyear" name="endedyear" style="width:30px"placeholder="년"> / <input type="text" id="endedmonth" name="endedmonth" style="width:30px" placeholder="월"></p><br>
					<p>보안코드<br><input type="password" id="secureNum" name="secureNum"></p><br>
					<button type="submit" style="background-color:green">예약하기</button>
				</form>
			</div>
				
			<div class="col-sm-5">
				<div class="money">
					<div class="panel panel-info class">
					    <div class="panel-heading">체크인 날짜</div>
					    <div class="panel-body">2019/08/03</div>
				   	</div>
				   	<div class="panel panel-info class">
					    <div class="panel-heading">체크아웃 날짜</div>
					    <div class="panel-body">2019/08/05</div>
				   	</div>
				   	<div class="panel panel-info class">
					    <div class="panel-heading">가격</div>
					    <div class="panel-body">100,200</div>
				   	</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>