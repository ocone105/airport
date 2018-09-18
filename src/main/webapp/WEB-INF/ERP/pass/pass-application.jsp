<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/airport/resources/common/js/plugins/chartist.min.js"></script>
<style type="text/css">
.square {
    border-radius: 0px!important;
}
/* -- color classes -- */
.coralbg {
    background-color: #00bcd4;
    height: 100%;
} 

.coral {
    color: #00bcd4;
}

.white {
    color: #fff!important;
}

/* -- The "User's Menu Container" specific elements. Custom container for the snippet -- */
div.user-menu-container {
  z-index: 10;
  background-color: #fff;
  margin-top: 20px;
  background-clip: padding-box;
  opacity: 0.97;
  filter: alpha(opacity=97);
  -webkit-box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
  box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
}

div.user-menu-container .btn-lg {
    padding: 0px 12px;
}

div.user-menu-container h4 {
    font-weight: 300;
    color: #8b8b8b;
}

div.user-menu-container a, div.user-menu-container .btn  {
    transition: 1s ease;
}

div.user-menu-container .thumbnail {
   width:100%;
   min-height:200px;
   border: 0px!important;
   padding: 0px;
   border-radius: 0;
   border: 0px!important;
}


/* -- The main tab & content styling of the vertical buttons info-- */
div.user-menu-content {
    color: #323232;
}

ul.user-menu-list {
    list-style: none;
    margin-top: 20px;
    margin-bottom: 0;
    padding: 10px;
    border: 1px solid #eee;
}
ul.user-menu-list>li {
    padding-bottom: 8px;
    text-align: center;
}

div.user-menu div.user-menu-content:not(.active){
  display: none;
}

.user-pad {
    padding: 20px 25px;
}

.no-pad {
    padding-right: 0;
    padding-left: 0;
    padding-bottom: 0;
}

.user-image {
	margin-top: 20px;
	margin-left: 20px;
	width: 80%;
	height: 50%;
}

 
.caption {
    position:absolute;
    top:0;
    right:0;
    background: rgba(70, 216, 210, 0.44);
    width:100%;
    height:100%;
    padding:2%;
    display: none;
    text-align:center;
    color:#fff !important;
    z-index:2;
}


.info {
    display: block;
    padding: 10px;
    background: #eee;
    text-transform: uppercase;
    font-weight: 300;
    text-align: right;
}

.info p {
    margin-bottom: 0;
}
</style>
</head>
<body>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-10 col-md-12">
					<div class="card">
						<div class="card-header card-header-tabs card-header-info">
							<div class="nav-tabs-navigation">
								<div class="nav-tabs-wrapper">
									<span class="nav-tabs-title">출입증</span>
									<ul class="nav nav-tabs" data-tabs="tabs">
										<li class="nav-item"><a class="nav-link active" href="#inquiry"
											data-toggle="tab"> <i class="material-icons">chevron_right</i>
												조회
										</a></li>
										<c:if test="${sec eq null}">
										<li class="nav-item"><a class="nav-link"
											href="#application" data-toggle="tab"> <i
												class="material-icons">chevron_right</i>신청
										</a></li>
										</c:if>
										<c:if test="${sec.scstate eq '0'}">
										<li class="nav-item"><a class="nav-link"
											href="#reissuance" data-toggle="tab"> <i
												class="material-icons">chevron_right</i> 재발급
										</a></li>
										</c:if>
									</ul>
								</div>
							</div>
						</div>
						<div class="card-body">
							<div class="tab-content">
							<!-- 조회 -->
								<div class="tab-pane active" id="inquiry">
								<br/>
								    <div class="row user-menu-container square">
       									 <div class="col-md-7 user-details">
           									 <div class="row coralbg white">
               									 <div class="col-md-6 no-pad">
                   									 <div class="user-pad">
								                        <h3></h3>
								                        <h4 class="white"><i class="fa fa-check-circle-o"></i>${sec.scno }</h4>
									                      <table class="table">
															<tbody>
																<tr>
																	<td>사원번호</td>
																	<td>${erploginUser.empno }</td>
																</tr>
																<tr>
																	<td>이름</td>
																	<td>${erploginUser.name }</td>
																</tr>
																<tr>
																	<td>부서</td>
																	<td>${erploginUser.deptname }</td>
																</tr>
																<tr>
																	<td>발급일</td>
																	<td>${sec.issuedate }</td>
																</tr>
																<tr>
																	<td>만료일</td>
																	<td>${sec.exdate }</td>
																</tr>
																</tbody>
															</table>		
								                    </div>
								                </div>
							                <div class="col-md-6 no-pad">
							                    <div class="user-image">
							                        <img src="/airport/resources/upload/${sec.img }" class="img-responsive thumbnail">
							                    </div>
							                </div>
								        </div>
							        </div>
								        <div class="col-md-5 user-menu user-pad">
								            <div class="user-menu-content active">
								                <ul class="user-menu-list">
								                	<li><h3><i class="fa fa-check-circle-o"></i>출입증신청내역 </h3></li>
								                	<hr/>
								                	<c:choose>
													  <c:when test="${sec eq null}">
													    <li><h4><i class="fa fa-user coral"></i> 출입증신청내역 없음</h4></li>
								                    	<li><h4><i class="fa fa-paper-plane-o coral"></i> 출입증 신청을 해주세요</h4></li>
													  </c:when>
													  <c:when test="${sec.scstate eq '0'}">
													    <li><h4><i class="fa fa-user coral"></i> 출입증 기한 만료됨</h4></li>
								                		<li><h4><i class="fa fa-paper-plane-o coral"></i> 출입증 재발급신청을 해주세요</h4></li>
													  </c:when>
													  <c:when test="${sec.scstate eq '1'}">
													    <li><h4><i class="fa fa-user coral"></i> 출입증 발급 완료</h4></li>
													  </c:when>
													  <c:when test="${sec.scstate eq '2'}">
													    <li><h4><i class="fa fa-user coral"></i>  출입증 신청 승인 대기중</h4></li>
								                		<li><h4><i class="fa fa-paper-plane-o coral"></i>  승인시까지 대기해주세요</h4></li>
													  </c:when>
													</c:choose>
								                </ul>
								            </div>
								        </div>
									</div>
								</div>
								<!-- 조회 끝 -->
							<!-- 신청 form -->	
							<c:if test="${sec eq null}">
								<div class="tab-pane" id="application">
								<form class="form-horizontal" method="post" action="/airport/erp/scapply.do?action=first"
									enctype="multipart/form-data">
									<table class="table">
										<tbody>
											<tr>
												<td>신청자사원번호</td>
												<td>${erploginUser.empno }
												<input type="hidden" name="empno" value="${erploginUser.empno }"/>
												</td>
											</tr>
											<tr>
												<td>신청자아이디</td>
												<td>${erploginUser.empid }
												</td>
											</tr>
											<tr>
												<td>신청자이름</td>
												<td>${erploginUser.name }</td>
											</tr>
											<tr>
												<td>부서</td>
												<td>${erploginUser.deptname }</td>
											</tr>
											<tr>
												<td>신청일</td>
												<td>${today }
												<input type="hidden" name="appdate" value="${today }">
												</td>
											</tr>
											<tr>
												<td>사진</td>
												<td><div>
														<img style="width: 130px; height: 150px;"
															src="/airport/resources/common/images/basicUser.png"
															id="empimg">
													</div> <br /> <input type="file" name="upfile"
													onchange="document.getElementById('empimg').src = window.URL.createObjectURL(this.files[0])"
													accept="upload/*" required="required"></td>
											</tr>
										</tbody>
									</table>
									<input type="submit" class="btn btn-primary pull-right" value="신청하기"> 
									</form>
								</div>
								</c:if>
								<!-- 신청form끝 -->
								
								<!-- 재신청form -->
								<c:if test="${sec.scstate eq '0'}" >
								<div class="tab-pane" id="reissuance">
								<form class="form-horizontal" method="post" action="/airport/erp/scapply.do?action=re"
									enctype="multipart/form-data">
									<table class="table">
										<tbody>
											<tr>
												<td>신청자사원번호</td>
												<td>${erploginUser.empno }
												<input type="hidden" name="empno" value="${erploginUser.empno }"/>
												</td>
											</tr>
											<tr>
												<td>신청자아이디</td>
												<td>${erploginUser.empid }
												</td>
											</tr>
											<tr>
												<td>신청자이름</td>
												<td>${erploginUser.name }</td>
											</tr>
											<tr>
												<td>부서</td>
												<td>${erploginUser.deptname }</td>
											</tr>
											<tr>
												<td>재발급신청일</td>
												<td>${today }
												<input type="hidden" name="appdate" value="${today }">
												</td>
												
											</tr>
											<tr>
												<td>사진</td>
												<td><div>
														<img style="width: 130px; height: 150px;"
															src="/airport/resources/upload/${sec.img }"
															id="empimg">
													</div> <br /> <input type="file" name="me_img"
													onchange="document.getElementById('empimg').src = window.URL.createObjectURL(this.files[0])"
													accept="upload/*"></td>
											</tr>
										</tbody>
									</table>
									<input type="submit" class="btn btn-primary pull-right" value="신청하기"> 
									</form>
								</div>
								</c:if>
								<!-- 재신청 form끝 -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>