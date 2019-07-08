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
#location{
	width:300px;
	height:30px;
	
}
</style>
</head>
<body>
<div class="body-container">
	<div class="hotelList">
		
		<form class="hotelsearch" method="post">			
			<p>검색 <input id="location"> </p>
			<p>인원수</p>
			<select name="count">
				<option value="#">1</option>
				<option value="#">2</option>
				<option value="#">3</option>
				<option value="#">4</option>
			</select>
		</form>
			
	</div>	
</div>
</body>
</html>