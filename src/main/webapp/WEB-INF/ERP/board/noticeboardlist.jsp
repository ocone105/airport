<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel='stylesheet' id='kboard-skin-thumbnail-css' href='/airport/resources/common/css/thumbnail.css?ver=5.3.9' type='text/css'media='all' />
	<style type="text/css">
		.kboard-list-uid,.kboard-list-title,.kboard-list-user,.kboard-list-date,.kboard-list-view { font-weight: bold;}
	</style>
</head>
<body>
	<div class="content">
		<h3>공지사항</h3>
			<div id="kboard-thumbnail-list">
					<!-- 리스트 시작 -->
					<div class="kboard-list">
						<table>
							<thead>
								<tr>
									<td class="kboard-list-uid">번호</td>
									<td class="kboard-list-title">제목</td>
									<td class="kboard-list-user">작성자</td>
									<td class="kboard-list-date">작성일</td>
									<td class="kboard-list-view">조회</td>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="post" items="${posts}">
								<tr class="kboard-list-notice">
									<td class="kboard-list-uid">1</td>
									<td class="kboard-list-user"><a href="/airport/erp/noticeread.do?boardno=${post.boardno}">${post.title}</a></td>
									<td class="kboard-list-user">${post.empno}</td>
									<td class="kboard-list-date">${post.boarddate}</td>
									<td class="kboard-list-view">${post.hits}</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="kboard-control">
						<a href="/airport/erp/noticewrite.do">글쓰기</a>
					</div>
					<div class="kboard-search">
						<form id="kboard-search-form-1" method="get" action="/airport/erp/search.do">
							<select name="column">
								<option value="">전체</option>
								<option value="title">제목</option>
								<option value="content">내용</option>
							</select> <input type="text" name="search" value="">
							<button type="submit" class="kboard-thumbnail-button-small">검색</button>
						</form>
					</div>
					<div class="kboard-pagination">
					<ul class="kboard-pagination-pages">
					<li class="prev">
						<a href="#">&laquo; Previous</a>
						</li>
						<li class="current"><strong>1</strong></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">6</a></li>
						<li><a href="#">7</a></li>
						<li><a href="#">8</a></li>
						<li><a href="#">9</a></li>
						<li><a href="#">10</a></li>
						<li class="next">
						<a href="#>">Next &raquo;</a>
						</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>