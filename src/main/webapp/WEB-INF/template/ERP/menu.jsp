<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.collapse {
	display: none
}

.collapse.in {
	display: block
}
</style>
</head>
<body>
	<div class="sidebar" data-color="azure" data-background-color="white">
		<div class="logo">
			<a href="/airport/erp/index.do" class="simple-text logo-normal">
				<i class="material-icons">flight</i>ERP</a>
		</div>
		<div class="sidebar-wrapper">
			<ul class="nav">
				<li class="nav-item active">
					<a class="nav-link" href="/airport/erp/deptlist.do"> 
						<i class="material-icons">list_alt</i>
						<p>부서조회</p>
					</a>
				</li>
				<li>
					<a class="nav-link" data-toggle="collapse" href="#task">
						<i class="material-icons">work</i>
						<p>업무관리</p>
					</a>
					<div class="collapse" id="task">
						<ul class="nav">
							<!-- 인사팀이 로그인했을 경우 -->
							<li>
								<a href="/airport/erp/empinsert.do"> 
									<span><i class="material-icons">person</i>사원등록</span>
								</a>
							</li>
							<li>
								<a href="/airport/erp/emplist.do"> 
									<span><i class="material-icons">how_to_reg</i>사원조회</span>
								</a>
							</li>
							<!-- <li>
								<a href="/airport/erp/empdeptlist.do"> 
									<span><i class="material-icons">how_to_reg</i>부서별사원조회</span>
								</a>
							</li> -->
							<!-- 보안팀이 로그인한 경우 -->
							<li>
								<a href="/airport/erp/permissionlist.do"> 
									<span><i class="material-icons">contact_mail</i>출입증허가</span>
								</a>
							</li>
							<li>
								<a href="/airport/erp/passlist.do"> 
									<span><i class="material-icons">recent_actors</i>출입증조회</span>
								</a>
							</li>
								
							<!-- 여객시설팀이 로그인했을 경우 -->
							<li>
								<a href="/airport/erp/datalist.do"> 
									<span><i class="material-icons">timeline</i>데이터조회</span>
								</a>
							</li>
							<li>
								<a href="/airport/erp/pfrequest.do"> 
									<span><i class="material-icons">group_add</i>인원요청</span>
								</a>
							</li>
							<li>
								<a href="/airport/erp/pflist.do"> 
									<span><i class="material-icons">group</i>인원배치조회</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
	
				<li class="nav-item ">
					<a class="nav-link" href="/airport/erp/pass.do"> 
						<i class="material-icons">picture_in_picture</i>
						<p>출입증신청</p>
					</a>
				</li>
				<li>
					<a class="nav-link" data-toggle="collapse" href="#board">
						<i class="material-icons">view_list</i>
						<p>사내게시판</p>
					</a>
					<div class="collapse" id="board">
						<ul class="nav">
							<li>
								<a href="/airport/erp/noticelist.do"> 
									<span><i class="material-icons">notifications</i>공지사항</span>
								</a>
							</li>
							<li>
								<a href="/airport/erp/anonymouslist.do"> 
									<span><i class="material-icons">face</i>익명게시판</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
				
				<!-- <li class="nav-item "><a class="nav-link"
					href="/airport/erp/dashboard.do"> <i class="material-icons">dashboard</i>
						<p>Dashboard</p>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/airport/erp/user.do"> <i class="material-icons">person</i>
						<p>User Profile</p>
				</a></li>
				<li class="nav-item "><a class="nav-link"
					href="/airport/erp/table.do"> <i class="material-icons">content_paste</i>
						<p>Table List</p>
				</a></li> 
				<li class="nav-item "><a class="nav-link"
					href="/airport/erp/typography.do"> <i class="material-icons">library_books</i>
						<p>Typography</p>
				</a></li>
				<li class="nav-item "><a class="nav-link"
					href="/airport/erp/icon.do"> <i class="material-icons">bubble_chart</i>
						<p>Icons</p>
				</a></li>
				<li class="nav-item "><a class="nav-link"
					href="/airport/erp/map.do"> <i class="material-icons">location_ons</i>
						<p>Maps</p>
				</a></li>
				<li class="nav-item "><a class="nav-link"
					href="/airport/erp/notification.do"> <i class="material-icons">notifications</i>
						<p>Notifications</p>
				</a></li> -->
				<!-- <li class="nav-item active-pro "><a class="nav-link"
					href="/airport/erp/upgrade.do"> <i class="material-icons">unarchive</i>
						<p>Upgrade to PRO</p>
				</a></li> -->
			</ul>
		</div>
	</div>
</body>
</html>