<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Travello template project">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/bootstrap4/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/plugins/OwlCarousel2-2.2.1/animate.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/main_styles.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/responsive.css">
	
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/about.css">
	<link rel="stylesheet" type="text/css" href="/airport/resources/styles/about_responsive.css">
	<link href="/airport/resources/list/style.css" rel="stylesheet" media="all">
	<link href="/airport/resources/list/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="/airport/resources/list/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    
</head>
<body>
	<!-- Home -->
	
	<div class="home">
		
		<!-- Home Slider -->
		<div class="home_slider_container">
			<div class="owl-carousel owl-theme home_slider">
				
				<!-- Slide -->
				<div class="owl-item">
					<div class="background_image" style="background-image:url(/airport/resources/images/home_slider.jpg)"></div>
					<div class="home_slider_content_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="home_slider_content">
										<div class="home_title"><h2>Let us take you away</h2></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Slide -->
				<div class="owl-item">
					<div class="background_image" style="background-image:url(/airport/resources/images/about.jpg)"></div>
					<div class="home_slider_content_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="home_slider_content">
										<div class="home_title"><h2>Let us take you away</h2></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Slide -->
				<div class="owl-item">
					<div class="background_image" style="background-image:url(/airport/resources/images/news.jpg)"></div>
					<div class="home_slider_content_container">
						<div class="container">
							<div class="row">
								<div class="col">
									<div class="home_slider_content">
										<div class="home_title"><h2>Let us take you away</h2></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</div>


	<!-- Intro -->

	<div class="intro">
		<div class="container">
			<div class="row">
				<div class="col">
							<!-- Milestones -->

	<div class="milestones">
		<div class="container">
			<div class="row">
			
			<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone text-center">
						<div class="milestone_icon"><img src="/airport/resources/images/airplanemode_active.svg"width="500"></div>
						<div class="milestone_counter" data-end-value="43">0</div>
						<div class="milestone_text">Flight</div>
					</div>
				</div>

				<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone text-center">
						<div class="milestone_icon"><img src="/airport/resources/images/people.svg" width="500"></div>
						<div class="milestone_counter" data-end-value="5230">0</div>
						<div class="milestone_text">Passenger</div>
					</div>
				</div>

				<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone text-center">
						<div class="milestone_icon"><img src="/airport/resources/images/more_horiz.svg"  width="500"></div>
						<div class="milestone_counter" data-end-value="12">0</div>
						<div class="milestone_text">Delayed</div>
					</div>
				</div>

				<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone text-center">
						<div class="milestone_icon"><img src="/airport/resources/images/airplanemode_inactive.svg"  width="500"></div>
						<div class="milestone_counter" data-end-value="15">0</div>
						<div class="milestone_text">Canceled</div>
					</div>
				</div>

			</div>
		</div>
	</div>
							<!-- List -->
							<div class="user-data m-b-40">
								<h3 class="title-3 m-b-30">
									<i class="zmdi zmdi-airplane"></i>Departure Schedule
								</h3>
								<div class="filters m-b-45">
									<div
										class="rs-select2--dark rs-select2--md m-r-10 rs-select2--border">
										<select class="js-select2" name="property">
											<option selected="selected">All Status</option>
											<option value="">delayed</option>
											<option value="">Cancelled</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
									<div class="rs-select2--dark rs-select2--sm rs-select2--border">
										<select class="js-select2 au-select-dark" name="time">
											<option selected="selected">All Time</option>
											<option value="">By Month</option>
											<option value="">By Day</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
								</div>
								<div class="table-responsive table-data">
									<table class="table">
										<thead>
											<tr>
												<td><label class="au-checkbox"> <input type="checkbox"> <span class="au-checkmark"></span>
												</label></td>
												<td>Airline/Flight<td>
												<td>Destination</td>
												<td>Departure Time</td>
												<td>GATE</td>
												<td>Status</td>
												<td>More</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<label class="au-checkbox"> 
														<input type="checkbox"> 
														<span class="au-checkmark"></span>
													</label>
												</td>
												<td>
													<div class="table-data__info">
														<h6>KE5691</h6>
														<span> <a href="#">대한항공</a>
														</span>
													</div>
												</td>
												<td>
													<img src="/airport/resources/logo/KOREANAIR.jpg" width="300">
												</td>
												<td>
													<div class="table-data__info">
														<h6>TAIPEI</h6>
													</div>	
												</td>
												<td>
													<h4>17:50</h4>
												</td>
												<td>30</td>
												<td><span class="role user">출발</span></td>
												<td><span class="more"> <i
														class="zmdi zmdi-more"></i>
												</span></td>
											</tr>
											<tr>
												<td>
													<label class="au-checkbox"> 
														<input type="checkbox"> 
														<span class="au-checkmark"></span>
													</label>
												</td>
												<td>
													<div class="table-data__info">
														<h6>OZ106</h6>
														<span> <a href="#">Asiana Airlines</a>
														</span>
													</div>
												</td>
												<td>
													<img src="/airport/resources/logo/ASIANAAIRLINES.png" width="300">
												</td>
												<td>
													<div class="table-data__info">
														<h6>TOKYO/NARITA</h6>
													</div>	
												</td>
												<td>
													<h4>17:55</h4>
												</td>
												<td>17</td>
												<td><span class="role user">출발</span></td>
												<td><span class="more"> <i
														class="zmdi zmdi-more"></i>
												</span></td>
											</tr>
											<tr>
												<td>
													<label class="au-checkbox"> 
														<input type="checkbox"> 
														<span class="au-checkmark"></span>
													</label>
												</td>
												<td>
													<div class="table-data__info">
														<h6>KE5749</h6>
														<span> <a href="#">대한항공</a>
														</span>
													</div>
												</td>
												<td>
													<img src="/airport/resources/logo/KOREANAIR.jpg" width="300">
												</td>
												<td>
													<div class="table-data__info">
														<h6>KITA KYUSHU</h6>
													</div>	
												</td>
												<td>
													<h4>18:00</h4>
												</td>
												<td>103</td>
												<td><span class="role member">탑승중</span></td>
												<td><span class="more"> <i
														class="zmdi zmdi-more"></i>
												</span></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="user-data__footer">
									<button class="au-btn au-btn-load">load more</button>
								</div>
							</div>
							<!-- END LIST-->
						


				</div>		
			</div>
		</div>
	</div>

	<script src="/airport/resources/plugins/greensock/TweenMax.min.js"></script>
	<script src="/airport/resources/plugins/greensock/TimelineMax.min.js"></script>
	<script src="/airport/resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
	<script src="/airport/resources/plugins/greensock/animation.gsap.min.js"></script>
	<script src="/airport/resources/plugins/greensock/ScrollToPlugin.min.js"></script>
	<script src="/airport/resources/js/about.js"></script>
</body>
</html>