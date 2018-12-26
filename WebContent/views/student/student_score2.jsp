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
		$(".instructor-look").popover({ 
			placement : 'left',
			trigger: "hover", 
			html: true
		});

		$(".subjectbook-look").popover({ 
			placement : 'left',
			trigger: "hover", 
			html: true
		});
	});
</script>

</head>
<body>

	<div class="page">
		<!-- Main Navbar-->
		<%@ include file="/views/partials/student_header.jsp"%>
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
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/views/student/student_first.jsp">HOME</a></li>
						
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/views/student/student_score1.jsp">성적 조회</a></li>
						<!-- 자신이 현재 위치한 마지막에 active 클래스 추가 -->
						<li class="breadcrumb-item active"><a href="">수강생 성적 조회</a></li>
					</ul>
				</div>

				<!-- 테이블이 들어갈 자리입니다. -->
				<section class="table">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-12">

								<div class="card">
									<div class="card-header d-flex align-items-center">
										<h3 class="h4">O O O 수강생 성적 조회</h3>
									</div>
									<div class="card-body">
										<!-- 우상단에 위치할 등록버튼에'만' btn-reg 클래스 추가! -->

										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>개설 과정 번호</th>
														<th>과정명</th>
														<th>개설 과정 기간</th>
														<th>강의실명</th>
														<th>진행 상황</th>
														<th>수료 여부</th>

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

													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>

								<div class="card">
									<div class="card-header d-flex align-items-center"></div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>과목명</th>
														<th>교재명</th>
														<th>강사 이름</th>
														<th>시험 날짜</th>
														<th>출결 점수(배점)</th>
														<th>필기 점수(배점)</th>
														<th>실기 점수(배점)</th>
														<th>시험 문제</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td rowspan="2">Java SE (2018-06-25~2018-09-10)</td>
														<td rowspan="2"><a class="subjectbook-look popover-bold" data-toggle="popover" title="이것이 자바다" data-content="<img src='${pageContext.request.contextPath}/resources/img/subjectbook_example.png' width='120' height='144'/>">이것이 자바다</a></td>
														<td rowspan="2"><a class ="instructor-look popover-bold" data-toggle="popover" title="김강사<br>010-1234-1234" data-content="<img src='${pageContext.request.contextPath}/resources/img/avatar-1.jpg' width='120' height='144'/>">김강사</a></td>
														<td>2018-10-15</td>
														<td>-(20)</td>
														<td>-(30)</td>
														<td>-(50)</td>
														<td>OS0032_181015.zip<br>
															<button type="button" class="btn btn-xs btn-light">다운로드</button></td>
													</tr>
													<tr>
														<td>2018-11-12</td>
														<td>-(20)</td>
														<td>-(40)</td>
														<td>-(40)</td>
														<td>OS0032_181112.zip<br>
															<button type="button" class="btn btn-xs btn-light">다운로드</button></td>
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

	<!-- 교재 보기에 관한 모달 -->


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