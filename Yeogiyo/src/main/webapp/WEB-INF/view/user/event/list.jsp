<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>

<div class="body-container">
	<div style="margin: 0px auto; padding-top: 70px; width: 800px;">
		<div class="mainform">
			<span style="font-weight: bold; font-size: 30px;">EVENT</span>
		</div>

		<div>
			<div class="panel panel-default">
				<div class="panel-body">
					<table class="table">
						<thead>
							<tr>
								<th width="60">번호</th>
								<th>제목</th>
								<th width="100">작성일</th>
								<th width="70">조회수</th>
								<th width="60">상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>질문</td>
								<td>2015-05-05</td>
								<td>5</td>
								<td>진행중</td>
							</tr>
						</tbody>
					</table>
					<table style="width: 100%; margin: 0px auto; border-spacing: 0px;">
						<tr height="35">
							<td align="center">${dataCount!=0 ? paging : "등록된 게시물이 없습니다." }
							</td>
						</tr>
					</table>
					<button type="button" class="btn btn-default btn-sm"
						onclick="javascript:location.href='<%=cp%>/user/event/created';">
						EVENT 작성</button>
				</div>
			</div>
		</div>
	</div>
</div>

