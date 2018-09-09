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
		<div class="faq">
			<h4>인원배치</h4>
		</div>
		<div class="col-md-10 col-sm-10">
			<div class="form-group">
				<h6>
					시설이름 <span class="icon-danger">*</span>
				</h6>
				<div id="acordeon">
					<div class="row panel-group" id="accordion">
						<div class="col-sm-5 panel panel-border panel-default">
							<a data-toggle="collapse" href="#collapseOne">
								<div class="panel-heading">
									<h4 class="panel-title">
										분류1 <i class="fa fa-chevron-down"></i>
									</h4>
								</div>
							</a>
							<div id="collapseOne" class="panel-collapse collapse">
								<div class="panel-body">분류1 분류1</div>
							</div>
						</div>
						<div class="col-sm-5 panel panel-border panel-default">
							<a data-toggle="collapse" href="#collapseTwo">
								<div class="panel-heading">
									<h4 class="panel-title">
										분류2 <i class="fa fa-chevron-down"></i>
									</h4>
								</div>
							</a>
							<div id="collapseTwo" class="panel-collapse collapse">
								<div class="panel-body">분류2 분류2</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row price-row">
				<div class="col-md-10">
					<h6>
						부서 <span class="icon-danger">*</span>
					</h6>
					<div class="row panel-group" id="accordion">
						<div class="col-sm-5 panel panel-border panel-default">
							<a data-toggle="collapse" href="#dept">
								<div class="panel-heading">
									<h4 class="panel-title">
										분류1 <i class="fa fa-chevron-down"></i>
									</h4>
								</div>
							</a>
							<div id="dept" class="panel-collapse collapse">
								<div class="panel-body">분류1 분류1</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<h6>
							인원 <span class="icon-danger">*</span>
						</h6>
						<input type="text" class="form-control border-input"
							placeholder="">
					</div>
					<div class="form-group">
						<h6>사유</h6>
						<textarea class="form-control textarea-limited border-input"
							placeholder="" rows="10" , data-limit="150"></textarea>
						<h5>
							<small><span id="textarea-limited-message"
								class="pull-right">150 characters left</span></small>
						</h5>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<button class="btn btn-primary btn-block">요청</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>