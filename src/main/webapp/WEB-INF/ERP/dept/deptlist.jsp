<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/airport/resources/common/css/jquery.treeview.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="/airport/resources/common/js/jquery.treeview.js"
	type="text/javascript"></script>
<script src="/airport/resources/common/js/query.cookie.js"></script>
<script type="text/javascript" src="/airport/resources/common/js/treedemo.js"></script>
</head>
<body>
	<div class="content">
		<div class="pull-right">
			<a href="/airport/erp/deptwrite.do">부서등록하기</a>
		</div>
	<div class="treeview" id="tree" style="margin: 20px" class="col-sm-6">
		<ul id="browser" class="filetree">
			<li class="closed"><span class="folder">123</span>
				<ul>
					<li><span class="file">장동건</span></li>
					<li><span class="file">장동건</span></li>
					<li>
					<span class="file">장동건</span>
						<ul>
							<li><span class="file">장동건</span></li>
						</ul>
					</li>
					
				</ul>
				
			</li>
		</ul>
	</div>
	
	</div>
</body>
</html>