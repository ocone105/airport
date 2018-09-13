<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.selectpicker {
	padding: 5px 0;
	margin: 2px 0 0;
	width: 80%;
	font-size: 13pt; list-style : none;
	background-color: #ffffff;
	border: 1px solid #ccc;
	border: 1px solid rgba(0, 0, 0, 0.2);
	*border-right-width: 2px;
	*border-bottom-width: 2px;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
	-webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
	-moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
	-webkit-background-clip: padding-box;
	-moz-background-clip: padding;
	background-clip: padding-box;
	list-style: none;
}
</style>
</head>
<body>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header card-header-primary">
							<h4 class="card-title">부서등록</h4>
							<p class="card-category">Complete profile</p>
						</div>
						<div class="card-body">
							<form class="form-horizontal" method="post"
								action="/airport/erp/deptwrite.do">
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<a data-toggle="collapse" href="#collapseOne">
												<div class="panel-heading">
													<label class="bmd-label-floating">부서분류1 <i
														class="fa fa-chevron-down"></i></label>
												</div>
											</a>
											<div id="collapseOne" class="panel-collapse collapse">
												<div class="panel-body">
													<select class="selectpicker" size="5">
														<option>Mustard</option>
														<option>Ketchup</option>
														<option>Relish</option>
														<option>Mayonnaise</option>
														<option>Barbecue Sauce</option>
														<option>Salad Dressing</option>
														<option>Tabasco</option>
														<option>Salsa</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<a data-toggle="collapse" href="#collapsetwo">
												<div class="panel-heading">
													<label class="bmd-label-floating">부서분류2<i
														class="fa fa-chevron-down"></i></label>
												</div>
											</a>
											<div id="collapsetwo" class="panel-collapse collapse">
												<div class="panel-body">
													<select class="selectpicker" size="5">
														<option>Mustard</option>
														<option>Ketchup</option>
														<option>Relish</option>
														<option>Mayonnaise</option>
														<option>Barbecue Sauce</option>
														<option>Salad Dressing</option>
														<option>Tabasco</option>
														<option>Salsa</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<a data-toggle="collapse" href="#collapse3">
												<div class="panel-heading">
													<label class="bmd-label-floating">부서분류3 <i
														class="fa fa-chevron-down"></i></label>
												</div>
											</a>
											<div id="collapse3" class="panel-collapse collapse">
												<div class="panel-body">
													<select class="selectpicker" size="5">
														<option>Mustard</option>
														<option>Ketchup</option>
														<option>Relish</option>
														<option>Mayonnaise</option>
														<option>Barbecue Sauce</option>
														<option>Salad Dressing</option>
														<option>Tabasco</option>
														<option>Salsa</option>
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">부서번호</label> <input
												type="text" class="form-control" name="deptno" id="deptno">
										</div>
									</div>
									<div class="col-md-5">
										<div class="form-group">
											<label class="bmd-label-floating">매니저</label> <input
												type="text" class="form-control" name="mgr" id="mgr">
										</div>
									</div>
									<!-- <div class="col-md-3">
										<div class="form-group">
											<label class="bmd-label-floating">분류1</label> <input
												type="text" class="form-control" name="deptctg1" id="deptctg1">
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label class="bmd-label-floating">분류2</label> <input
												type="text" class="form-control" name="deptctg2" id="deptctg2">
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-group">
											<label class="bmd-label-floating">분류3</label> <input
												type="text" class="form-control" name="deptctg3" id="deptctg3">
										</div>
									</div> -->
									<div class="col-md-10">
										<div class="form-group">
											<label class="bmd-label-floating">임무</label> <input
												type="text" class="form-control">
										</div>
									</div>
									<div class="col-md-10">
										<div class="form-group">
											<label class="bmd-label-floating">매니저</label> <input
												type="text" class="form-control">
										</div>
									</div>
								</div>

								<button type="submit" class="btn btn-primary pull-right">등록하기</button>
								<div class="clearfix"></div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>