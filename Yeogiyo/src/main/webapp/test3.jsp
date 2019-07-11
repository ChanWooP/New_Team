<html>
<head>
<meta charset="UTF-8">
<title>Yeogiyo</title>

<link rel="stylesheet" href="/Yeogiyo/resource/css/lthstyle.css"
	type="text/css">
<link rel="stylesheet" href="/Yeogiyo/resource/css/jh.css"
	type="text/css">
<link rel="stylesheet"
	href="/Yeogiyo/resource/jquery/css/smoothness/jquery-ui.min.css"
	type="text/css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<script type="text/javascript"
	src="/Yeogiyo/resource/jquery/js/jquery-1.12.4.min.js"></script>

<script type="text/javascript" src="/Yeogiyo/resource/js/util-jquery.js"></script>
<script type="text/javascript" src="/Yeogiyo/resource/js/util.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="header">
		<nav class="navbar">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="/Yeogiyo/user/main">YEOGIYO</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">마이페이지 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">회원정보확인</a></li>
							<li><a href="#">예약확인</a></li>
							<li><a href="#">포인트정보</a></li>
							<li><a href="#">위시리스트</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">고객센터 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/Yeogiyo/user/event/list">이벤트</a></li>
							<li><a href="/Yeogiyo/user/faq/list">FAQ</a></li>
							<li><a href="/Yeogiyo/user/qna/list">Q&amp;A</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/Yeogiyo/user/member/join"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="/Yeogiyo/user/member/join"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
			</div>
		</nav>

	</div>

	<div class="container">
		<script type="text/javascript">
			$(function() {
				$("#form-sday").datepicker({
					showMonthAfterYear : true
				});
				$("#form-eday").datepicker({
					showMonthAfterYear : true
				});
			});
		</script>

		<div id="header" class="container">
			<div id="mainsearch" style="margin-top: 30px; height: 500px;">
				<div
					style="width: 500px; margin: 60px; margin-bottom: 10px; min-height: 330px; border: 1px solid yellow; background-color: white;">
					<form action="">
						<div style="margin: 20px;">
							<div>
								<label><b>여행지</b></label>
							</div>
							<div style="margin-top: 10px;">
								<input
									style="width: 430px; height: 40px; border: 1px solid #ccc; border-radius: 4px;"
									type="text" placeholder="가고싶은 여행지를 입력해주세요" name="place">
							</div>
						</div>
						<div style="margin: 20px;">
							<div>
								<label><b>체크인 날짜</b></label> <span style="margin-right: 140px;"></span>
								<label><b>체크 아웃 날짜</b></label>
							</div>
							<div style="margin-top: 10px;">
								<input type="text" name="checkinday" id="form-sday"
									readonly="readonly"
									style="width: 200px; height: 40px; border: 1px solid #ccc; border-radius: 4px;"
									class="hasDatepicker"> <span
									style="margin-right: 20px;"></span> <input type="text"
									name="checkoutday" id="form-eday" readonly="readonly"
									style="width: 200px; height: 40px; border: 1px solid #ccc; border-radius: 4px;"
									class="hasDatepicker">
							</div>
						</div>

						<div style="margin: 20px;">
							<div>
								<label><b>인원</b></label>
							</div>
							<div style="margin-top: 10px;">
								<select
									style="width: 200px; height: 40px; border: 1px solid #ccc; border-radius: 4px;"
									name="pnum">
									<option>인원수 선택</option>
									<option value="1">성인1명</option>
									<option value="2">성인2명</option>
									<option value="4">성인4명</option>
									<option value="0">4명이상</option>
								</select> <span style="margin-right: 30px;"></span>
								<button
									style="width: 200px; height: 40px; background-color: #4CAF50; border: none; border-radius: 4px;">
									<b>검색</b>
								</button>
							</div>
						</div>
						<div style="margin: 20px;">
							<a href="#" id="option">추가 옵션 선택</a>
						</div>
					</form>
				</div>
				<div
					style="width: 500px; margin-left: 60px; min-height: 60px; border: 1px solid yellow; background-color: white;">
					<div style="margin: 5px; margin-left: 20px;">
						<b>인기 여행지 : </b>
					</div>
				</div>
			</div>
		</div>

	</div>

	<div class="footer">
		<footer class="container-fluid">
			<p>
				<a href="">YEOGIYO 정책 및 약관</a>&nbsp;&nbsp;&nbsp; <a href="">회사소개</a>&nbsp;&nbsp;&nbsp;
				<a href="">제휴제안</a>&nbsp;&nbsp;&nbsp; <a href="">이용약관</a>&nbsp;&nbsp;&nbsp;
				<a href="">개인정보취급방침</a>&nbsp;&nbsp;&nbsp; <a href="">고객센터</a>&nbsp;&nbsp;&nbsp;
				© YEOGIYO Corp.
			</p>
		</footer>

	</div>

	<script type="text/javascript"
		src="/Yeogiyo/resource/jquery/js/jquery-ui.min.js"></script>
	<script type="text/javascript"
		src="/Yeogiyo/resource/jquery/js/jquery.ui.datepicker-ko.js"></script>


	<div id="ui-datepicker-div"
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
</body>
</html>