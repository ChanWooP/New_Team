<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   String cp=request.getContextPath();
%>
<style type="text/css">
.userinfo{
	width: 450px; 
	text-align: center;
	border: 1px solid #cccccc;
	margin: 0px auto;
	background: #ffffff;
	
}

.userinfo #name,#tel,#email,#cardNum,.card,#secureNum{
	font-size: 14px;
    line-height: 18px;
    margin-top: 0;
    margin-bottom: 0;
    margin-right: 8px;
    height: 32px;
    width:266px;
}
</style>

<div class="body-container">
<div style="padding: 40px 0;">
  <div class="userinfo">
	<br>
	<h3>예약자 등록</h3>
	<br>
	<div>
		<form  method="post">
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
			<br>
			<p>체크인 날짜</p> 
			<p>19/08/03</p>
			<p>체크아웃 날짜</p>
			<p>19/08/05</p>
			<p>가격</p>
			<p>100,200</p>
		</form>
	</div>
   </div>
 </div>
</div>