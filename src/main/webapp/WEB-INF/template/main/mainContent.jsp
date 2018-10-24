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
						<div class="milestone_counter" data-end-value="${todayflight }">0</div>
						<div class="milestone_text">항공편</div>
					</div>
				</div>

				<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone text-center">
						<div class="milestone_icon"><img src="/airport/resources/images/people.svg" width="500"></div>
						<div class="milestone_counter" data-end-value="${passengerresult }">0</div>
						<div class="milestone_text">승객</div>
					</div>
				</div>

				<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone text-center">
						<div class="milestone_icon"><img src="/airport/resources/images/more_horiz.svg"  width="500"></div>
						<div class="milestone_counter" data-end-value="${todaydelay}">0</div>
						<div class="milestone_text">지연</div>
					</div>
				</div>

				<!-- Milestone -->
				<div class="col-lg-3 milestone_col">
					<div class="milestone text-center">
						<div class="milestone_icon"><img src="/airport/resources/images/airplanemode_inactive.svg"  width="500"></div>
						<div class="milestone_counter" data-end-value="${todaycancel}">0</div>
						<div class="milestone_text">결항</div>
					</div>
				</div>

			</div>
		</div>
	</div>
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