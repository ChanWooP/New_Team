<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>

<div class="body-container">
	<div style="margin: 0px auto; padding-top: 70px; width: 800px; margin-bottom:200px">
		<div class="mainform">
			<span style="font-weight: bold; font-size: 30px;">FAQ</span>
		</div>

		<div>
			<div class="panel panel-default">
				<div class="panel-body">
					<table class="table">
						<thead>
							<tr>
								<th width="80">번호</th>
								<th>제목</th>
								<th width="100">작성일</th>
								<th width="100"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>질문
								</td>
								<td>2015-05-05</td>
								<td><a>수정</a> | <a>삭제</a></td>
							</tr>
							
						</tbody>
					</table>
					<button type="button" class="btn btn-default btn-sm" 
						onclick="javascript:location.href='<%=cp%>/user/faq/created';">
						FAQ 작성</button>
				</div>
			</div>
		</div>
	</div>
</div>

