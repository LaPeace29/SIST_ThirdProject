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
	
	$(".subjectbook-look").popover({ 
		placement : 'left',
		trigger: "hover", 
		html: true
	});
	
	$(".btn-look").on("click", function() {
        window.location.assign("${pageContext.request.contextPath}/views/instructor/13_instructor_point2.jsp");
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
			<%@ include file="/views/partials/instructor_sidebar.jsp"%>
			<div class="content-inner">

				<!-- 네비게이션이 들어갈 자리입니다. -->
				<div class="breadcrumb-holder container-fluid">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="09_instructor_first.jsp">HOME</a></li>
						<li class="breadcrumb-item active"><a
							href="12_instructor_point1.jsp">배점 관리</a></li>
					</ul>
				</div>

				<!-- 테이블이 들어갈 자리입니다. -->
				<section class="table">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header d-flex align-items-center">
										<h3 class="h4">김강사 강사 - 강의 과목</h3>
									</div>
									<div class="card-body">
										<!-- 우상단에 위치할 등록버튼에'만' btn-reg 클래스 추가! -->
										<div class="btn-group">
											<button type="button" class="btn btn-sm btn-light">강의
												종료</button>
											<button type="button" class="btn btn-sm btn-light active">강의
												중</button>
											<button type="button" class="btn btn-sm btn-light">강의
												예정</button>
										</div>
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>개설 과목 번호</th>
														<th>개설 과목명</th>
														<th>개설 과목 기간</th>
														<th>개설 과정명</th>
														<th>개설 과정 기간</th>
														<th>강의실</th>
														<th>교재명</th>
														<th>수강생 등록 인원</th>
														<th>비고</th>
														<th>시험 정보</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>OS0034</td>
														<td>HTML</td>
														<td>2018-01-02 ~ 2018-03-02</td>
														<td>웹기반 빅데이터 분석 응용SW개발자</td>
														<td>2018-01-02 ~ 2018-05-06</td>
														<td>1강의실</td>
														<td><a class="subjectbook-look" data-toggle="popover"
															title="이것이 자바다"
															data-content="<img src='${pageContext.request.contextPath}/resources/img/subjectbook_example.png' width='120' height='144'/>">HTML5 웹 프로그래밍 입문</a></td>
														<td>3명</td>
														<td>강의 중</td>
														<td><button class="btn btn-sm btn-light btn-look">보기</button></td>
													</tr>
													<tr>
														<td>OS0032</td>
														<td>Oracle</td>
														<td>2018-09-11 ~ 2018-11-12</td>
														<td>웹기반 빅데이터 분석 응용SW개발자</td>
														<td>2018-01-02 ~ 2018-05-06</td>
														<td>1강의실</td>
														<td><a class="subjectbook-look" data-toggle="popover"
															title="이것이 자바다"
															data-content="<img src='${pageContext.request.contextPath}/resources/img/subjectbook_example.png' width='120' height='144'/>">HTML5 웹 프로그래밍 입문</a></td>
														<td>2명</td>
														<td>강의 종료</td>
														<td><button class="btn btn-sm btn-light btn-look">보기</button></td>
													</tr>
													<tr>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td>...</td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
													</tr>
													<tr>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td>...</td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
													</tr>
													<tr>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td>...</td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
													</tr>
													<tr>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td>...</td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
													</tr>
													<tr>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td>...</td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
													</tr>
												</tbody>
											</table>
										</div>
										<div style="text-align: center; padding-top: 10px">
											<button class="btn btn-primary" id="prev">이전</button>
											<button class="btn btn-primary" id="next">다음</button>


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