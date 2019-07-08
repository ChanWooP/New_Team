<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>
<script type="text/javascript">

</script>
<div class="container">
	<div style="margin-top:10px;">
		<strong style="font-size:30px">명소추가</strong>
		<hr style="width: 100%; color: black; height: 1px; background-color:black; margin-top:0px; margin-bottom:10px" />
		<div style="width:50%;">
			<div class="form-group">
	  			<label for="usr">명소이름:</label>
	  			<input type="text" class="form-control" id="name">
			</div>
			<div class="form-group">
	  			<label for="usr">거리:</label>
	  			<input type="text" class="form-control" id="km">
			</div>
		</div>
	</div>
</div>