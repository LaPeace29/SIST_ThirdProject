<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>개설 과목 관리</title>
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
						<li class="breadcrumb-item active"><a
							href="${pageContext.request.contextPath}/views/admin/admin_opensubject.jsp">개설 과목 관리</a></li>
					</ul>
				</div>

				<!-- 테이블이 들어갈 자리입니다. -->
				<section class="table">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header">
										<h3 class="h4">개설 과목 정보</h3>
									</div>
									<div class="card-body">
										<!-- 우상단에 위치할 등록버튼에'만' btn-reg 클래스 추가! -->
										<button class="btn btn-primary btn-sm btn-reg"
											data-toggle="modal" data-target="#course_reg">신규 개설
											과정 추가</button>
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>개설 과목 번호</th>
														<th>개설 과목명</th>
														<th>개설 과목 기간</th>
														<th>교재명</th>
														<th>강사명</th>
														<th>개설 과정명</th>
														<th>개설 과정 기간</th>
														<th>강의실</th>
														<th>삭제 가능 여부</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>-</td>
														<td>-</td>
														<td>-</td>
														<td>-</td>
														<td>-</td>
														<td>-</td>
														<td>-</td>
														<td>-</td>
														<td>
															<button class="btn btn-sm btn-light btn-del" data-toggle="modal" data-target="#subject_delete">삭제</button>
														</td>
													</tr>
													<tr>
														<td>-</td>
														<td>-</td>
														<td>-</td>
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
														<td>-</td>
														<td>-</td>
														<td>-</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div style="text-align: center; padding-top: 10px">
											<button class="btn btn-primary" id="prev">이전</button>
											<button class="btn btn-primary" id="next">다음</button>

											<form style="float: right" class="form-inline" method="post">
												<div>
													<div class="form-group">
														<!-- 검색 단어 입력 폼 -->
														<!-- 검색 기준은 각자 상황에 맞춰서 설정하세요!! -->
														<select class="form-control text-small" id="key"
															name="key">
															<option class="text-small" value=subject_id>개설
																과목 번호</option>
															<option class="text-small" value=subject_name>개설
																과목명</option>
															<option class="text-small" value="instructor_name">강사명</option>
															<option class="text-small" value="course_name">개설
																과정명</option>

														</select> <input type="text" class="form-control" id="value"
															name="value" placeholder="Search">
														<!-- 검색 진행 버튼 -->
														<button type="button" class="btn btn-md btn-light"
															id="btnSearch">
															<i class="fa fa-search"></i>
														</button>
													</div>
												</div>
											</form>
										</div>
										<br>
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


	<!-- 등록에 관한 모달 -->
	<div id="course_reg" role="dialog" class="modal fade text-left">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="exampleModalLabel" class="modal-title">신규 개설 과정 등록</h4>
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="" method="post">
						<div class="form-group">
							<label for="courseNumSelect">개설 과정</label> <select
								class="form-control" id="courseNumSelect" name="courseNumSelect"
								required>
								<option>과정번호1 / 과정명1</option>
								<option>과정번호2 / 과정명2</option>
								<option>과정번호3 / 과정명3</option>
								<option>과정번호4 / 과정명4</option>
							</select> <label for="subjectSelect">과목</label> <select
								class="form-control" id="subjectSelect" name="subjectSelect"
								required>
								<option>과목번호1 / 과목명1</option>
								<option>과목번호2 / 과목명2</option>
								<option>과목번호3 / 과목명3</option>
								<option>과목번호4 / 과목명4</option>
							</select> <label for="subjectStartDate">과목 시작일</label> <input type="date"
								class="form-control" id="subjectStartDate"
								name="subjectStartDate" required> <label
								for="subjectEndDate">과목 종료일</label> <input type="date"
								class="form-control" id="subjectEndDate" name="subjectEndDate"
								required> <label for="subjectBookSelect">교재</label> <select
								class="form-control" id="subjectBookSelect"
								name="subjectBookSelect" required>
								<option>교재번호1 / 교재명1</option>
								<option>교재번호2 / 교재명2</option>
								<option>교재번호3 / 교재명3</option>
								<option>교재번호4 / 교재명4</option>
							</select> <label for="instructorSelect">강사</label> <select
								class="form-control" id="instructorSelect"
								name="instructorSelect" required>
								<option>강사번호1 / 강사명1</option>
								<option>강사번호2 / 강사명2</option>
								<option>강사번호3 / 강사명3</option>
								<option>강사번호4 / 강사명4</option>
							</select>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">등록</button>
					<button type="button" data-dismiss="modal"
						class="btn btn-light">취소</button>
				</div>
			</div>
		</div>
	</div>




	<!-- 과목 삭제에 관한 모달 -->
	<div id="subject_delete" role="dialog" class="modal fade text-left">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="exampleModalLabel" class="modal-title">과목 삭제</h4>
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<p>다음 과목을 삭제하시겠습니까?</p>
					<form action="" method="post">
						<div class="form-group">
							<label for="subject_name">과목명</label> <input type="text"
								id=subject_name name="subject_name" placeholder="과목명"
								class="form-control" readonly>
						</div>
						<div class="form-group">
							<label for="subject_date">과목 기간</label> <input type="text"
								id="subject_date" name="subject_date"
								placeholder="과목 기간" class="form-control" readonly>
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