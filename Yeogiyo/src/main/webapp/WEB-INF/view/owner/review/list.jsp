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
		<strong style="font-size:30px">리뷰</strong>
		<hr style="width: 100%; color: black; height: 1px; background-color:black; margin-top:0px; margin-bottom:10px" />
	</div>
	<table style="margin-bottom:10px; width:100%;">
		<tr>
			<td>${dataCount }개(${page}/${total_page } 페이지)</td>
			<td align="right">
			<form name="searchForm" action="" method="post">
				<select name="codition">
					<option value="all" ${condition=="all"?"selected='selected'":"" }>모두</option>
					<option value="all" ${condition=="all"?"selected='selected'":"" }>모두</option>
					<option value="all" ${condition=="all"?"selected='selected'":"" }>모두</option>
					<option value="all" ${condition=="all"?"selected='selected'":"" }>모두</option>
				</select>
 				<input type="text" name="keyword" style="height:30px;" placeholder="리뷰 검색" value="${keyword }">
 				<button type="button" class="btn" onclick="hotSearch()">검색</button>
			</form>
			</td>
		</tr>
	</table>
</div>