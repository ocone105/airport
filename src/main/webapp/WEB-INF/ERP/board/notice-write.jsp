<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="content">
		<div class="col-md-12">
			<form method="post" action="/airport/erp/noticewrite.do" enctype="multipart/form-data">
			<div class="card">
				<div class="card-header card-header-primary">
					<h4 class="card-title">공지사항</h4>
					<input type="hidden" name="ctg" value="notice">
				</div>
				<div class="card-body">
					<div>
					<span>제목</span>
					<input type="text" class="form-control" name="title" required>
					</div>
					<div>
						<span><label>작성자</label></span>
						<span>아이디<input type="hidden" name="empno" value="0"></span>
					</div>
					<div>
						<label>내용</label>
						<textarea class="form-control" rows="15" name="txt" id="txt" required></textarea>
					</div>
						<div><label>첨부파일</label>
						<div class="attr-value">
							<input type="file" id="upfile" name="upfile">
						</div>
					</div>
				</div>
			</div>
			<button type="submit" class="btn btn-primary pull-right">등록하기</button>
			</form>
		</div>
	</div>
</body>
</html>