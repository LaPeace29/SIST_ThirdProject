<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>개설 과정 관리 > 과목 정보</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css">
<!-- Fontastic Custom icon font-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/fontastic.css">
<!-- Google fonts - Poppins -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
<!-- theme stylesheet-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.default.css"
	id="theme-stylesheet">
<!-- Favicon-->
<link rel="shortcut icon" href="img/favicon.ico">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common.css">
<script
	src="${pageContext.request.contextPath}/resources/script/common.js"></script>

<script>
	var txt = "";
	$(document)
			.ready(
					function() {
/* 						
					$("#jobId").on("change", function() {
						ajax($(this).val());
					});
					
					
					function ajax(jobId) {
						$.ajax({
							url: "${pageContext.request.contextPath}/employee/getMinBasicpay"
							,data: {jobId:jobId}
							,success: function(data_) {
								console.log(data_);
								var doc = JSON.parse(data_);
								var minbasicpay = doc.minbasicpay;
								//주의) numberWithCommas() 사용을 위해서 외부 스크립트(util.js) 연결 필요
								$("#basicpay").attr("placeholder", "기본급 (최소 "+numberWithCommas(minbasicpay)+"원 이상)");
								$("#basicpay").attr("min", minbasicpay);
						}});
*/
						
						
						$(".btn-look")
								.on(
										"click",
										function() {
								
											txt += "<div class=\"card\">";
											txt += "<div class=\"card-header\">";
											txt += "<h4>";
											txt += "<strong>Java SE(2018-06-25 ~ 2018-08-10)</strong>";
											txt += "</h4>";
											txt += "<h5>시험 정보</h5>";
											txt += "</div>";
											txt += "<div class=\"card-body\">";
											txt += "<div class=\"table-responsive\">";
											txt += "<table class=\"table\">";
											txt += "<thead>";
											txt += "		<tr>";
											txt += "		<th>시험 번호</th>";
											txt += "		<th>출결 배점</th>";
											txt += "		<th>필기 배점</th>";
											txt += "			<th>실기 배점</th>";
											txt += "			<th>시험 날짜</th>";
											txt += "			<th>시험 문제 파일</th>";
											txt += "		</tr>";
											txt += "	</thead>";
											txt += "		<tbody>";
											txt += "			<tr>";
											txt += "			<td>-</td>";
											txt += "				<td>-</td>";
											txt += "			<td>-</td>";
											txt += "			<td>-</td>";
											txt += "			<td>-</td>";
											txt += "			<td>-</td>";
											txt += "		</tr>";
											txt += "		<tr>";
											txt += "			<td>-</td>";
											txt += "				<td>-</td>";
											txt += "				<td>-</td>";
											txt += "				<td>-</td>";
											txt += "				<td>-</td>";
											txt += "				<td>-</td>";
											txt += "	</tr>";
											txt += "	<tr>";
											txt += "	<td>-</td>";
											txt += "		<td>-</td>";
											txt += "	<td>-</td>";
											txt += "			<td>-</td>";
											txt += "		<td>-</td>";
											txt += "			<td>-</td>";
											txt += "		</tr>";
											txt += "		</tbody>";
											txt += "	</table>";
											txt += "	</div>";
											txt += "	</div>";

											console.log(txt);
											$("#demo").html(txt);

										});
					});
</script>

</head>
<body>

	<div class="page">
		<!-- Main Navbar-->
		<%@ include file="/views/partials/admin_header.jsp"%>
		<div class="page-content d-flex align-items-stretch">
			<!-- Side Navbar -->
			<%@ include file="/views/partials/admin_sidebar.jsp"%>
			<div class="content-inner">

				<!-- 네비게이션이 들어갈 자리입니다. -->
				<div class="breadcrumb-holder container-fluid">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/views/admin/admin_first.jsp">Home</a></li>
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/views/admin/admin_opencourse1.jsp">개설 과정 관리</a></li>
						<li class="breadcrumb-item active"><a
							href="${pageContext.request.contextPath}/views/admin/admin_opencourse2.jsp">과목 정보</a></li>
					</ul>
				</div>

				<!-- 테이블이 들어갈 자리입니다. -->
				<section class="table">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header">
										<h3 class="h4">Python &amp; Java 응용 SW실무 개발자 양성 과정(2018-06-25 ~ 2019-01-17)</h3>
										<h5>과목 정보</h5>
									</div>
									<div class="card-body">
										<!-- 우상단에 위치할 등록버튼에'만' btn-reg 클래스 추가! -->
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>개설 과목 번호</th>
														<th>과목명</th>
														<th>개설 과목 기간</th>
														<th>강사 이름</th>
														<th>교재명</th>
														<th>시험 정보</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>-</td>
														<td>-</td>
														<td>-</td>
														<td>-</td>
														<td>-</td>
														<td>
															<button class="btn btn-sm btn-light btn-look">보기</button>
														</td>
													</tr>
													<tr>
														<td>-</td>
														<td>-</td>
														<td>-</td>
														<td>-</td>
														<td>-</td>
														<td>-</td>
													</tr>
													<tr>
														<td>-</td>
														<td>-</td>
														<td>-</td>
														<td>-</td>
														<td>-</td>
														<td>-</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<div id="demo"></div>
							</div>
						</div>
					</div>
				</section>
				<!-- Page Footer-->
				<%@ include file="/views/partials/footer.jsp"%>
			</div>
		</div>
	</div>

	<!-- JavaScript files-->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/popper.js/umd/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery.cookie/jquery.cookie.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/chart.js/Chart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery-validation/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/charts-home.js"></script>

	<!-- Main File-->
	<script src="${pageContext.request.contextPath}/resources/js/front.js"></script>

</body>
</html>