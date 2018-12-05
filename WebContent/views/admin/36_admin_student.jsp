<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>수강생 관리</title>
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
	$(document)
			.ready(
					function() {
						$(".btnSearch")
								.on(
										"click",
										function() {
											window.location
													.assign("${pageContext.request.contextPath}/views/admin/38_admin_student_mng.jsp");
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
			<%@ include file="/views/partials/admin_sidebar.jsp"%>
			<div class="content-inner">

				<!-- 네비게이션이 들어갈 자리입니다. -->
				<div class="breadcrumb-holder container-fluid">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a
							href="${pageContext.request.contextPath}/views/admin/18_admin_first.jsp">HOME</a></li>
						<li class="breadcrumb-item active"><a
							href="${pageContext.request.contextPath}/views/admin/36_admin_student.jsp">수강생 관리</a></li>
					</ul>
				</div>

				<!-- 테이블이 들어갈 자리입니다. -->
				<section class="table">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header">
										<h4>
											<strong>전체 수강생 목록</strong>
										</h4>
									</div>
									<div class="card-body">
										<!-- 우상단에 위치할 등록버튼에'만' btn-reg 클래스 추가! -->
										<button class="btn btn-primary btn-sm btn-reg"
											data-toggle="modal" data-target="#course_reg">수강생 등록</button>
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>수강생 번호</th>
														<th>수강생 이름</th>
														<th>수강생 휴대폰 번호</th>
														<th>수강생 등록일</th>
														<th>수강 횟수</th>
														<th>수강내역 조회</th>
														<th>삭제</th>
														<th>비밀번호 초기화</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>ST0001</td>
														<td>홍길동
															<button type="button" class="btn btn-xs btn-light"
																data-toggle="modal" data-target="#pictureModal">사진보기</button>
														</td>
														<td>010-2356-4528</td>
														<td>2017-12-20</td>
														<td>1회</td>
														<td><button
																class="btn btn-sm btn-default btnSearch">조회</button></td>
														<td><button class="btn btn-sm btn-default btn-del"
																data-toggle="modal" data-target="#student_delete">삭제</button></td>
														<td><button
																class="btn btn-sm btn-default btn-reset" data-toggle="modal" data-target="#password_reset">초기화</button></td>
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
															<option class="text-small" value="gid">Gid</option>
															<option class="text-small" value="name">Name</option>
															<option class="text-small" value="phone">Phone</option>
															<option class="text-small" value="regDate">RegDate</option>
														</select> <input type="text" class="form-control" id="value"
															name="value" placeholder="Search">
														<!-- 검색 진행 버튼 -->
														<button type="button" class="btn btn-md btn-secondary"
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
					<h4 id="exampleModalLabel" class="modal-title">수강생 등록</h4>
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="modal-body">
						<div class="col-12 stretch-card">
							<div class="card">
								<div class="card-body">
									<!-- 사진 넣어야함!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
									<p class="card-description"></p>
									<form class="forms-sample">
										<div class="form-group row">
											<label for="exampleInputEmail2"
												class="col-sm-3 col-form-label"><img
												src="${pageContext.request.contextPath}/resources/img/avatar-3.jpg"
												width="100%"></label>
										</div>
										<div class="form-group row">
											<label for="exampleInputEmail2"
												class="col-sm-3 col-form-label">이름</label>
											<div class="col-sm-9">
												<input type="email" class="form-control"
													id="exampleInputEmail2" placeholder="내용을 입력해주세요">
											</div>
										</div>
										<div class="form-group row">
											<label for="exampleInputEmail2"
												class="col-sm-3 col-form-label">비밀번호</label>
											<div class="col-sm-9">
												<input type="email" class="form-control"
													id="exampleInputEmail2" placeholder="내용을 입력해주세요">
											</div>
										</div>
										<div class="form-group row">
											<label for="exampleInputEmail2"
												class="col-sm-3 col-form-label">휴대폰번호</label>
											<div class="col-sm-9">
												<input type="email" class="form-control"
													id="exampleInputEmail2" placeholder="내용을 입력해주세요">
											</div>
										</div>
										<div class="form-group row">
											<label for="exampleInputEmail2"
												class="col-sm-3 col-form-label">등록일</label>
											<div class="col-sm-9">
												<input type="email" class="form-control"
													id="exampleInputEmail2" placeholder="내용을 입력해주세요">
											</div>
										</div>
										<div class="form-group row">
											<label for="exampleInputEmail2"
												class="col-sm-3 col-form-label">주소</label>
											<div class="col-sm-9">
												<input type="email" class="form-control"
													id="exampleInputEmail2" placeholder="내용을 입력해주세요">
											</div>
										</div>

										<div class="form-group row">
											<label for="exampleInputPassword2"
												class="col-sm-3 col-form-label">이메일</label>
											<div class="col-sm-9">
												<input type="password" class="form-control"
													id="exampleInputPassword2" placeholder="내용을 입력해주세요">
											</div>
										</div>

										<div class="form-group row">
											<label for="exampleInputPassword2"
												class="col-sm-4 col-form-label">사진 업로드</label> <input
												type="file" name="img[]" class="file-upload-default">
											<div class="input-group col-sm-8">

												<input type="text" class="form-control file-upload-info"
													disabled placeholder="Upload Image"> <span
													class="input-group-append">
													<button type="button"
														class="file-upload-browse btn btn-sm btn-inverse-dark">파일
														선택</button>
												</span>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">등록</button>
					<button type="button" data-dismiss="modal"
						class="btn btn-secondary">취소</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 등록에 관한 모달 -->
	<div id="pictureModal" role="dialog" class="modal fade text-left">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="exampleModalLabel" class="modal-title">홍길동 사진</h4>
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">

					<form action="" method="post">
						<div class="form-group row">
							<label for="exampleInputEmail2" class="col-sm-3 col-form-label"><img
								src="${pageContext.request.contextPath}/resources/img/avatar-3.jpg"
								width="100%"></label>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" data-dismiss="modal" class="btn btn-primary">확인</button>
				</div>
			</div>
		</div>
	</div>


	<!-- 삭제에 관한 모달 -->
	<div id="student_delete" role="dialog" class="modal fade text-left">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="exampleModalLabel" class="modal-title">수강생 삭제</h4>
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<p>다음 수강생 정보를 삭제하시겠습니까?</p>
					<p>수강생 이름 : 홍길동</p>
					<p>수강생 전화번호 : 010-2356-4528</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">확인</button>
					<button type="button" data-dismiss="modal"
						class="btn btn-secondary">취소</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 비밀번호 초기화에 관한 모달 -->
	<div id="password_reset" role="dialog" class="modal fade text-left">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="exampleModalLabel" class="modal-title">비밀번호 초기화</h4>
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					기존 패스워드> <input type="text" id="password">
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