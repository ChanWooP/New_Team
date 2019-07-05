<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
ul,li {
	margin:0; padding:0;
} 

html, body {
	margin: 0px;
	background-color:#FFC153;
}

.headerContainer {
	background-color: #FFC153;
}

.header {
	text-align: center;
	width: 1080px;
	height: 100px;
	margin: 0 auto;
}

.header-highlight {
	list-style: none;
	margin: 0;
	padding: 0;
}

.header-highlight li {
	display: inline-block;
}

.header-nohiglight {
	list-style: none;
	margin: 0;
	padding: 0;
}

.header-nohiglight li {
	display: inline-block;
}

.body {
	margin: 0px auto;
	width: 1080px;
}

.bodyContainer {
	background-color: #FFFFFF;
}

.footer {
	width: 1080px;
	margin: 0 auto;
	color: black;
	text-align: center;
}

.footer * {
	text-decoration: none;
	color: black;
}

/* li a {
	text-decoration: none;
	color: #FFFFFF;
}  */

/* https://codepen.io/Grimgel/pen/aaKgEX */
.menubar, .submenu{
	list-style-type:none;	
}

.menubar>li{
	font-size: 15pt;
	float:left;
	border:1px solid red;
}

.menubar >li >a {
	padding: 12px 36px;
}

.submenu >li {
	border-bottom: 1px solid red;
	font-size: 15pt;
}

</style>
</head>

<body>
	<div class="header">
		<ul class="menubar">
			<li><a href="#">Menu1</a>
				<ul class="submenu">
					<li><a href="#">Submenu1</a></li>
					<li><a href="#">Submenu1</a></li>
					<li><a href="#">Submenu1</a></li>
					<li><a href="#">Submenu1</a></li>
					<li><a href="#">Submenu1</a></li>
				</ul>
			</li>
			<li><a href="#">Menu2</a></li>
			<li><a href="#">Menu3</a></li>
			<li><a href="#">Menu4</a></li>
			<li><a href="#">Menu5</a></li>
		</ul>
	</div>

	
	<div class="bodyContainer">
		<div class="body">
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
				Integer a scelerisque risus, id imperdiet risus. Duis egestas augue
				sit amet purus lobortis posuere ut a purus. Pellentesque habitant
				morbi tristique senectus et netus et malesuada fames ac turpis
				egestas. Integer dictum urna aliquet aliquet faucibus. Morbi posuere
				nisi ut egestas fringilla. In facilisis et magna ac congue. Cras quis
				condimentum sapien, eget malesuada mi.</p>
	
			<p>Nunc id auctor quam, vitae sagittis massa. Quisque ultrices,
				lorem ac pellentesque volutpat, augue turpis mollis dolor, placerat
				congue tellus dolor non sapien. Nulla non quam vitae arcu auctor
				sodales. Duis molestie dui quis imperdiet convallis. In vulputate
				fermentum quam, ac blandit diam molestie nec. Quisque quis augue vel
				nisl consectetur elementum vitae eget quam. Nam molestie feugiat
				pellentesque. Donec sit amet libero erat. Etiam augue augue,
				convallis ac suscipit ut, sagittis in dui. Curabitur placerat, ipsum
				non iaculis semper, ante metus tristique odio, ac malesuada turpis
				nunc ac tellus. Cras sed purus sit amet enim blandit aliquet. Proin
				ex velit, fermentum at ornare ut, varius non augue.</p>
	
			<p>Duis fringilla nec nibh sed laoreet. Suspendisse potenti. Sed
				ante leo, lacinia non est vitae, porta varius ipsum. Aenean et
				imperdiet libero. Quisque vitae sapien sit amet est euismod
				fermentum. Sed fringilla egestas elit, tincidunt ornare justo feugiat
				sed. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer
				in libero eu mi dignissim consequat at vitae enim. Duis iaculis nec
				arcu a euismod. Suspendisse eget tortor vitae nisl ultrices aliquam
				sit amet vel justo. Fusce ut massa gravida, placerat libero vel,
				tincidunt lectus. Nam eget lacus eu massa pellentesque porta. Duis
				nec posuere magna, eget tempus nisi. Aliquam rutrum, quam ac porta
				scelerisque, dui tortor vestibulum enim, sed ornare libero urna ut
				ex. Sed in orci et augue porta viverra.</p>
	
			<p>Vivamus vel lectus finibus, venenatis est at, egestas eros.
				Donec blandit risus ut nisi cursus tristique. Integer in viverra
				nisi. Duis ornare leo vel metus rutrum, ac egestas mi posuere.
				Vestibulum lacus enim, semper vel placerat vel, commodo id diam.
				Fusce volutpat augue ut tortor malesuada maximus. Ut ac mauris dolor.</p>
	
			<p>Proin non felis eleifend, faucibus sem eu, finibus lorem.
				Pellentesque faucibus maximus turpis, vulputate iaculis quam placerat
				faucibus. Praesent id diam lectus. Nam maximus consectetur risus
				pharetra congue. Orci varius natoque penatibus et magnis dis
				parturient montes, nascetur ridiculus mus. Nulla convallis metus nec
				nibh porttitor, tempor blandit sem elementum. Suspendisse consequat
				neque nec felis efficitur commodo. Donec suscipit mauris eget erat
				blandit, eget molestie sem ultrices. Sed sed egestas ligula. Aliquam
				erat volutpat. Cras sollicitudin nulla id mauris aliquam, sed
				interdum odio dignissim. Aliquam vel enim elit. Nulla faucibus leo ac
				ex interdum, ac interdum neque ultrices.</p>
		</div>
	</div>
	
	<footer class="footerContainer">
		<div class="footer">
			<a href="">SPRING 정책 및 약관</a>&nbsp;&nbsp;&nbsp; <a href="">회사소개</a>&nbsp;&nbsp;&nbsp;
			<a href="">제휴제안</a>&nbsp;&nbsp;&nbsp; <a href="">이용약관</a>&nbsp;&nbsp;&nbsp;
			<a href="">개인정보취급방침</a>&nbsp;&nbsp;&nbsp; <a href="">고객센터</a>&nbsp;&nbsp;&nbsp;
			© SPRING Corp.
		</div>
	</footer>
</body>
</html>