<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%
   String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Yeogiyo</title>
<link rel="stylesheet" href="<%=cp %>/resource/css/owner1.css" type="text/css">
<script type="text/javascript" src="<%=cp%>/resource/jquery/js/jquery-1.12.4.min.js"></script>
</head>
<body>
<div class="header">
    <tiles:insertAttribute name="header"/>
</div>
	
<div class="container">
    <tiles:insertAttribute name="body"/>
</div>

<div class="footer">
    <tiles:insertAttribute name="footer"/>
</div>



</body>
</html>