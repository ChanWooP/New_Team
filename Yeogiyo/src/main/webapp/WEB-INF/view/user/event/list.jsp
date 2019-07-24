<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<script type="text/javascript">
function searchList() {
	var f=document.searchForm;
	f.submit();
}
</script>

<div class="container">
	<div style="margin: 0px auto; padding-top: 30px;  margin-bottom:100px;">
		<div class="page-header">
		    <h1><span class="glyphicon glyphicon-gift"></span>&nbsp;<b>Event</b></h1>      
		</div>
		<div style="margin-top: 0">
			<div class="panel panel-default">
				<div class="panel-body">
					<table style="width: 100%; margin: 5px auto 0px; border-spacing: 0px;">
							<tr height="10">
								<td align="left" width="50%">
									${dataCount}개(${page}/${total_page} 페이지)</td>
								<td align="right">&nbsp;</td>
							</tr>
						</table>
						<div>
						<c:forEach var="dto" items="${list }" varStatus="status">
							<c:if test="${status.index%4==0 }">
								<c:out value="<div class='row'>" escapeXml="false"/>
							</c:if>
								<div class="col-md-3">
									<div class="thumbnail">
								        <a href="${articleUrl}&eventNum=${dto.eventNum}">
								          <img src="<%=cp%>/uploads/eventPhoto/${dto.eventPhoto}" alt="eventPhoto" style="width:100%"> 
								          <div class="caption">
								            <p style="text-align: center;">${dto.eventTitle }</p>
								            <p style="text-align: center; margin-bottom:0px;"><b>${dto.eventStatus }</b></p>
								          </div>
								        </a>
								      </div>
								</div>
							<c:if test="${status.index%4==3 }">
								<c:out value="</div>" escapeXml="false"/>
							</c:if>	
						</c:forEach>
						</div>
						<table style="width: 100%; margin: 0px auto; border-spacing: 0px;">
							<tr height="35">
								<td align="center">${dataCount!=0 ? paging : "등록된 게시물이 없습니다." }
								</td>
							</tr>
						</table>
						<table style="width: 100%; margin: 20px auto; border-spacing: 0px;">
							<tr height="40">
								<td align="left" width="100">
									<button type="button" class="btn btn-default btn-sm"
										onclick="javascript:location.href='<%=cp%>/user/event/list';">새로고침</button>
								</td>
								<td align="center">
									<form name="searchForm" action="<%=cp%>/user/event/list"
										method="post">
										<input type="text" name="keyword" class="boxTF"
											value="${keyword}">
										<button type="button" class="btn btn-default btn-sm"
											onclick="searchList()">검색</button>
									</form>
								</td>
								<c:if test="${sessionScope.member.enabled==3 }">
								<td align="right" width="100">
								
									<button type="button" class="btn btn-default btn-sm"
										onclick="javascript:location.href='<%=cp%>/user/event/created';">
										이벤트 작성
									</button>
								</td>
								</c:if>
								
								<td align="right" width="80">
									<button type="button" class="btn btn-default btn-sm"
										onclick="javascript:location.href='<%=cp%>/user/event/list?status=진행중';">
										진행중
									</button>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>