<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>쌍용교육센터</title>
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
	$(document).ready(function() {
		
		$(".btn-look").on("click", function() {
            window.location.assign("${pageContext.request.contextPath}/views/student/08_student_score2.jsp");
         });
		
		

	});
</script>

</head>
<body>

	<div class="page">
		<!-- Main Navbar-->
		<%@ include file="/views/partials/header.jsp"%>
		<div class="page-content d-flex align-items-stretch">
			<!-- Side Navbar -->
			<%@ include file="/views/partials/student_sidebar.jsp" %>
			<div class="content-inner">
				<!-- --------------------미활용---------------------- -->
				<!-- Page Header-->
				<!--                 
					<header class="page-header">
	                    <div class="container-fluid">
	                        <h2 class="no-margin-bottom">Dashboard</h2>
	                    </div>
	                </header> 
	                -->
				<!-- ------------------------------------------------ -->
				<!-- 네비게이션이 들어갈 자리입니다. -->
				<div class="breadcrumb-holder container-fluid">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/views/student/06_student_first.jsp">HOME</a></li>
						<li class="breadcrumb-item active"><a href="">성적 조회</a></li>
					</ul>
				</div>

				<!-- 테이블이 들어갈 자리입니다. -->
				<section class="table">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header d-flex align-items-center">
										<h3 class="h4">성적 조회</h3>
									</div>
									<div class="card-body">
										<div class="row">
											<div class="col-sm-2">
												<img
													src="${pageContext.request.contextPath}/resources/img/avatar-2.jpg"
													height="182px">
											</div>
											<div class="col-sm-11">
												<table class="table table-bordered text-center" >
													<tbody>
														<tr>
															<td>수강생 번호</td>
															<td>ST00000</td>
														</tr>

														<tr>
															<td>수강생 이름</td>
															<td>홍길동</td>
														</tr>

														<tr>
															<td>수강생 휴대폰 번호</td>
															<td>010-0000-0000</td>
														</tr>

														<tr>
															<td>수강생 등록일</td>
															<td>2000-00-00</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>

										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>개설 과정 번호</th>
														<th>개설 과정명</th>
														<th>개설 과정 기간</th>
														<th>강의실</th>
														<th>진행 상황</th>
														<th>수료 여부</th>
														<th>성적</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>OC0001</td>
														<td>웹기반 빅데이터 분석 응용 SW 개발자</td>
														<td>2018-01-02 ~ 2018-05-06</td>
														<td>1강의실</td>
														<td>
															<div class="progress">
																<div class="progress-bar bg-primary" role="progressbar"
																	style="width: 25%" aria-valuenow="25" aria-valuemin="0"
																	aria-valuemax="100"></div>
															</div>
														</td>
														<td>수료</td>
														<td><button class="btn btn-sm btn-light btn-look"><a>성적 조회</a></button></td>
													</tr>
													<tr>
														<td>OC0015</td>
														<td>Java & Python 기반 응용 SW 개발자 양성 과정</td>
														<td>2018-06-25 ~ 2019-01-17</td>
														<td>2강의실</td>
														<td>
															<div class="progress">
																<div class="progress-bar bg-primary" role="progressbar"
																	style="width: 25%" aria-valuenow="25" aria-valuemin="0"
																	aria-valuemax="100"></div>
															</div>
														</td>
														<td>수료 예정</td>
														<td><button class ="btn btn-sm btn-light btn-look"><a>성적 조회</a></button></td>
													</tr>
												</tbody>
											</table>
										</div>
										
									</div>
								</div>
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