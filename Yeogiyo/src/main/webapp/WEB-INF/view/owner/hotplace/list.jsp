<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>
<script type="text/javascript">
function hotAdd(){
	location.href="<%=cp%>/owner/hotplace/created";
}

function hotUpdate(placeNum){
	var query = "?page=${page}&condition=${condition}&keyword=${keyword}";
	query += "&placeNum="+placeNum;
	
	location.href="<%=cp%>/owner/hotplace/update"+query;
}

function hotDelete(placeNum, placePhoto){
	var query = "?page=${page}&condition=${condition}&keyword=${keyword}";
	query += "&placeNum="+placeNum+"&placePhoto="+placePhoto;
	if(confirm("해당 명소를 삭제 하시겠습니까?"))
		location.href = "<%=cp%>/owner/hotplace/delete"+query;
}

function hotSearch(){
	var f = document.searchForm;
	f.submit();
}
</script>
	<div class="container">
		<div style="width:100%; margin:0 auto; padding-top:30px;">
			<h1><span class="glyphicon glyphicon-camera"></span>&nbsp;<b>호텔 명소</b></h1>
		</div>
		<div style="border:1px solid gray; padding:10px; border-radius:20px; margin-bottom:10px;">
		<table style="margin-bottom:10px; width:100%; margin:auto;">
			<tr>
				<td>${dataCount }개(${page}/${total_page } 페이지)</td>
				<td align="right">
				<form name="searchForm" action="<%=cp%>/owner/hotplace/list" method="post">
					<input type="hidden" name="condition" value="placeName">
  					<input type="text" name="keyword" style="height:30px;" placeholder="명소이름 검색" value="${keyword }">
  					<button type="button" class="btn" onclick="hotSearch()">검색</button>
				</form>
				</td>
			</tr>
		</table>
		<br>
		<table style="width:100%; margin:auto;">
		<c:forEach var="dto" items="${list }">
			<tr style="border:1px solid gray;">
				<td style="padding:5px;" width="30%" align="center"><img src="<%=cp%>/uploads/hotplace/${dto.placePhoto}" width="200px" height="150px"></td>
				<td style="padding:5px; padding-left:10px; font-size:15px;" width="70%" align="left">
					<strong>장소명 :</strong>${dto.placeName }<br><br>
					<strong>숙소와의 거리 :</strong> ${dto.placeDis }Km<br><br>
					<strong>주소 :</strong>(${dto.placeZip })&nbsp;${dto.placeAddr1 }&nbsp;${dto.placeAddr2 }<br>
					<div style="float:right;">
						<button type="button" class="btn" onclick="hotUpdate('${dto.placeNum}')">수정</button>
						<button type="button" class="btn" onclick="hotDelete('${dto.placeNum}', '${dto.placePhoto }')">삭제</button>
					</div>
				</td>
			</tr>
			<tr><td><br></td></tr>
		</c:forEach>
		</table>
		<table style="width:100%; margin-bottom:15px;">
			<tr>
				<td align="center">
					<c:if test="${dataCount==0 }">
						등록된 호텔 명소가 없습니다.
					</c:if>
					<c:if test="${dataCount!=0 }">
						${paging }
					</c:if>
				</td>
			</tr>
		</table>
		<table style="width:100%">
			<tr>
				<td>
					<button type="button" class="btn" style="float:right;" onclick="hotAdd()">명소추가</button> 
				</td>
			</tr>
		</table>
	</div>
</div>