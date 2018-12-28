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

	});
</script>

</head>
<body>

	<div class="page">
		<!-- Main Navbar-->
		<%@ include file="/WEB-INF/views/partials/instructor_header.jsp"%>
		<div class="page-content d-flex align-items-stretch">
			<!-- Side Navbar -->
			<%@ include file="/WEB-INF/views/partials/instructor_sidebar.jsp" %>
			<div class="content-inner">
				
				<!-- 네비게이션이 들어갈 자리입니다. -->
				<div class="breadcrumb-holder container-fluid">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="instructor_first">HOME</a></li>
						<li class="breadcrumb-item"><a href="instructor_point1.jsp">배점 관리</a></li>
						<li class="breadcrumb-item active"><a href="instructor_point2.jsp">시험 정보</a></li>
					</ul>
				</div>

				<!-- 테이블이 들어갈 자리입니다. -->
				<section class="table">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header d-flex align-items-center">
										<h3 class="h4">웹기반 빅데이터 분석 응용 SW
											개발자(2018-01-02~2018-05-06) Oracle(2018-01-02~2018-03-02) 시험
											정보</h3>
									</div>
									<div class="card-body">
										<!-- 우상단에 위치할 등록버튼에'만' btn-reg 클래스 추가! -->
										<button class="btn btn-primary btn-sm btn-reg"
											data-toggle="modal" data-target="#point_reg">배점 등록</button>
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>시험 번호</th>
														<th>출결 배점</th>
														<th>필기 배점</th>
														<th>실기 배점</th>
														<th>시험 날짜</th>
														<th>시험 문제</th>
														<th>삭제</th>
													</tr>
												</thead>
												<tbody>													
													<tr>
														<td>EXAM0013</td>
														<td>20</td>
														<td>30</td>
														<td>50</td>
														<td>2018-10-15</td>
														<td>OS0032_181015.zip<br>
															<button class=" btn btn-xs btn-light btn-look"
																id="btnDown">다운로드</button></td>
														<td><button class="btn btn-sm btn-light btn-del"
																data-toggle="modal" data-target="#point_delete">삭제
															</button></td>
													</tr>
													<tr>
														<td>EXAM0014</td>
														<td>20</td>
														<td>40</td>
														<td>40</td>
														<td>2018-11-12</td>
														<td>OS0032_181112.zip<br>
															<button class="btn btn-xs btn-light btn-look">다운로드</button></td>
													 	<td><button class="btn btn-sm btn-light btn-del"
																data-toggle="modal" data-target="#point_delete">삭제
															</button></td> 
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
				<%@ include file="/WEB-INF/views/partials/footer.jsp"%>
			</div>
		</div>
	</div>

	<!-- 등록에 관한 모달 -->
	<div id="point_reg" role="dialog" class="modal fade text-left">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="exampleModalLabel" class="modal-title">배점 등록</h4>
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<p align="center">웹기반 빅데이터 분석 응용 SW 개발자(2018-01-02~2018-05-06)
					Oracle(2018-00-00~2018-00-00)</p>
				<div class="modal-body">
					<form action="" method="post">
						<div class="form-group">
							<label for="subjectbook_name">출석 배점</label> <input type="text"
								id="attendance_point" name="attendance_point"
								placeholder="출석 배점" class="form-control">
						</div>
						<div class="form-group">
							<label for="subjectbook_isbn">필기 배점</label> <input type="text"
								id="write_point" name="write_point"
								placeholder="필기 배점" class="form-control">
						</div>
						<div class="form-group">
							<label for="subjectbook_isbn">실기 배점</label> <input type="text"
								id="skill_point" name="skill_point"
								placeholder="실기 배점" class="form-control">
						</div>
						<div class="form-group">
							<label for="subjectbook_isbn">시험 날짜</label> <input type="text"
								id="exam_date" name="exam_date"
								placeholder="시험 날짜" class="form-control">
						</div>
						<div class="form-group">
							<label for="subjectbook_isbn">시험 파일</label> <input type="file"
								id="exam_file" name="exam_file"
								class="form-control">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">등록</button>
					<button type="button" data-dismiss="modal"
						class="btn btn-secondary">취소</button>
				</div>
			</div>
		</div>
	</div>
	
	<div id="point_delete" role="dialog" class="modal fade text-left">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="exampleModalLabel" class="modal-title">배점 삭제</h4>
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<p>다음 배점 정보를 삭제하시겠습니까?</p>
					<form action="" method="post">
							<div class="form-group">
							<label for="subjectbook_name">시험 번호</label> <input type="text"
								id="exam_id" name="exam_id"
								placeholder="EXAM0013" class="form-control" readonly = "readonly">
						</div>
						<div class="form-group">
							<label for="subjectbook_isbn">시험 날짜</label> <input type="text"
								id="exam_date" name="exam_date"
								placeholder="2018-10-15" class="form-control" readonly = "readonly">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">확인</button>
					<button type="button" data-dismiss="modal"
						class="btn btn-secondary">취소</button>
				</div>
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