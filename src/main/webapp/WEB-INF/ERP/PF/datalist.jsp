<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- Chartist JS -->
<!-- <script src="/airport/resources/common/js/plugins/chartist.min.js"></script> -->
<script src="/airport/resources/common/js/Chart.bundle.js"></script>
<script src="/airport/resources/common/js/Chart.js"></script>
</head>
<body>
<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="card card-stats">
						<div class="card-header card-header-warning card-header-icon">
							<div class="card-icon">
								<i class="material-icons">flight_takeoff</i>
							</div>
							<p class="card-category">연결에 의한</p>
							<p class="card-category">지연/결항률 </p>
							<h4 class="card-title">지연률: ${result1_1 }%</h4>
							<h4 class="card-title">결항률: ${result1_2 }%</h4>
						</div>
						<div class="card-footer">
							<div class="stats">
								<i class="material-icons">local_offer</i> 2017/10 - 2018/09 자료기준
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="card card-stats">
						<div class="card-header card-header-success card-header-icon">
							<div class="card-icon">
								<i class="material-icons">usb</i>
							</div>
							<p class="card-category">항공기 정비에 따른</p>
							<p class="card-category">지연/결항률 </p>
							<h4 class="card-title">지연률: ${result2_1 }%</h4>
							<h4 class="card-title">결항률: ${result2_2 }%</h4>
						</div>
						<div class="card-footer">
							<div class="stats">
								<i class="material-icons">local_offer</i> 2017/10 - 2018/09 자료기준
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="card card-stats">
						<div class="card-header card-header-danger card-header-icon">
							<div class="card-icon">
								<i class="material-icons">beach_access</i>
							</div>
							<p class="card-category">기상에 따른</p>
							<p class="card-category">지연/결항률 </p>
							<h4 class="card-title">지연률: ${result3_1 }%</h4>
							<h4 class="card-title">결항률: ${result3_2 }%</h4>
						</div>
						<div class="card-footer">
							<div class="stats">
								<i class="material-icons">local_offer</i> 2017/10 - 2018/09 자료기준
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="card card-stats">
						<div class="card-header card-header-info card-header-icon">
							<div class="card-icon">
								<i class="material-icons">timer</i>
							</div>
							<p class="card-category">항로복잡에 따른 </p>
							<p class="card-category">지연/결항률 </p>
							<h4 class="card-title">지연률: ${result4_1 }%</h4>
							<h4 class="card-title">결항률: ${result4_2 }%</h4>
						</div>
						<div class="card-footer">
							<div class="stats">
								<i class="material-icons">local_offer</i> 2017/10 - 2018/09 자료기준
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="card card-chart">
						<div class="card-header card-header-info">
							<canvas id="delayChart" height="200"></canvas>
						</div>
						<div class="card-body">
							<h4 class="card-title">지연이유 (%)</h4>
							<p class="card-category">
								<span class="text-success">	<i class="material-icons">local_offer</i></span>지연
							</p>
							<div>연결-${delay.get(0) }% | 정비-${delay.get(1) }% | 기상-${delay.get(2) }% </div> 
							<div>항로혼잡-${delay.get(3) }% | 기타-${delay.get(4) }%</div>
						</div>
						<div class="card-footer">
							<div class="stats">
								<i class="material-icons">access_time</i>2017/10 - 2018/09 자료기준
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card card-chart">
						<div class="card-header card-header-info">
							<canvas id="cancelChart" height="200"></canvas>
						</div>
						<div class="card-body">
							<h4 class="card-title">결항이유(%)</h4>
							<p class="card-category">
								<span class="text-success"><i class="fa fa-long-arrow-up"></i></span>결항
							</p>
							<div>연결-${cancel.get(0) }% | 정비-${cancel.get(1) }% | 기상-${cancel.get(2) }% </div>
							<div>항로혼잡-${cancel.get(3) }% | 기타-${cancel.get(4) }%</div>
						</div>
						<div class="card-footer">
							<div class="stats">
								<i class="material-icons">access_time</i>2017/10 - 2018/09 자료기준
							</div>
						</div>
					</div>
				</div>
		</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="card card-chart">
						<div class="card-header card-header-warning">
							<canvas id="complexdelayChart" height="200"></canvas>
							
						</div>
						<div class="card-body">
							<h4 class="card-title">항로복잡 Delay</h4>
							<p class="card-category">
								<span class="text-success"><i class="fa fa-long-arrow-up"></i>
									% </span> 시간 별 항로복잡에 따른 지연률
							</p>
						</div>
						<div class="card-footer">
							<div class="stats">
								<i class="material-icons">access_time</i>2017/10 - 2018/09 자료기준
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card card-chart">
						<div class="card-header card-header-warning">
							<canvas id="complexcancelChart" height="200"></canvas>
						</div>
						<div class="card-body">
							<h4 class="card-title">항로복잡 Cancel</h4>
							<p class="card-category">
								<span class="text-success"><i class="fa fa-long-arrow-up"></i>
									% </span> 시간 별 항로복잡에 따른 결항률
							</p>
						</div>
						<div class="card-footer">
							<div class="stats">
								<i class="material-icons">access_time</i>2017/10 - 2018/09 자료기준
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
<script type="text/javascript">
//지연이유 차트
var ctx = $("#delayChart");
var datas = [];
<c:forEach var="de" items="${delay}">
	datas.push("${de}");
 </c:forEach>
var myChart = new Chart(ctx, {
type: 'doughnut',
data: {
	labels: ["연결", "정비", "기상", "항로혼잡", "기타"],
 datasets: [{
	label: '지연이유 (%)',
	data: datas,
	backgroundColor: [
		'rgba(5, 0, 23, 0.8)',
        'rgba(70, 65, 217, 0.8)',
        'rgba(67, 116, 217, 0.8)',
		'rgba(107, 102, 255, 0.8)',
		'rgba(103, 153, 255, 0.8)',
		'rgba(178, 204, 255, 0.8)'
		],
		borderWidth: 1
		}]
}
});

//시간 별 항로혼잡에 따른 지연
var ctx = $("#cancelChart");
var datas = [];
<c:forEach var="can" items="${cancel}">
	datas.push("${can}");
 </c:forEach>
var myChart = new Chart(ctx, {
type: 'doughnut',
data: {
	labels: ["연결", "정비", "기상", "항로혼잡", "기타"],
 datasets: [{
	label: '결항이유 (%)',
	data: datas,
	backgroundColor: [
		'rgba(134, 0, 0, 0.8)',
        'rgba(170, 18, 18, 0.8)',
        'rgba(206, 54, 54, 0.8)',
		'rgba(242, 90, 90, 0.8)',
		'rgba(255, 126, 126, 0.8)'
		],
		borderWidth: 1
		}]
}
});



//시간 별 항로혼잡에 따른 지연
	var ctx = $("#complexdelayChart");
	var datas = [];
	<c:forEach var="comde" items="${comderesult}">
		datas.push("${comde}");
	 </c:forEach>
	var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
		labels: ["00시", "01시", "02시", "03시", "04시", "05시", "06시", "07시", "08시", "09시", "10시", "11시", "12시", 
			"13시", "14시", "15시", "16시", "17시", "18시", "19시", "20시", "21시", "22시", "23시", "24시"],
	 datasets: [{
		label: '시간 별 항로혼잡에 따른 지연 (%)',
		data: datas,
		backgroundColor: [
			'rgba(255, 99, 132, 0.8)',
	        'rgba(54, 162, 235, 0.8)',
	        'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)'
			],
			borderWidth: 1
			}]
	},
	options: {
		scales: {
			yAxes: [{
				ticks: {
					beginAtZero:true
					}
			}]
	}
	}
	});
	
//complexcancelChart	
	var ctx = $("#complexcancelChart");
	var datas = [];
	<c:forEach var="comcan" items="${comcanresult}">
	 	datas.push("${comcan}");
	 </c:forEach>
	var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
		labels: ["00시", "01시", "02시", "03시", "04시", "05시", "06시", "07시", "08시", "09시", "10시", "11시", "12시", 
			"13시", "14시", "15시", "16시", "17시", "18시", "19시", "20시", "21시", "22시", "23시", "24시"],
	 datasets: [{
		label: '시간 별 항로혼잡에 따른 결항 (%)',
		data: datas,
		backgroundColor: [
			'rgba(255, 99, 132, 0.8)',
	        'rgba(54, 162, 235, 0.8)',
	        'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)',
			'rgba(255, 99, 132, 0.8)',
			'rgba(54, 162, 235, 0.8)'
			],
			borderWidth: 1
			}]
	},
	options: {
		scales: {
			yAxes: [{
				ticks: {
					beginAtZero:true
					}
			}]
	}
	}
	});

</script>
</body>
</html>