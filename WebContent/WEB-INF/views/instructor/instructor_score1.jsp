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
		var open_subject_id = $(this).parents("tr").find("td:eq(0)").text();
		window.location.assign("${pageContext.request.contextPath}/instructor/score2?open_subject_id="+open_subject_id);
    });
	
	$(".btn-status").on("click",function() {
		var instructor_status = $(this).val();
		console.log(instructor_status);
		window.location.assign("${pageContext.request.contextPath}/instructor/score11?instructor_status="+instructor_status);
     });
     });


</script>

</head>
<body>

	<div class="page">
		<!-- Main Navbar-->
		<%@ include file="/WEB-INF/views/partials/instructor_header.jsp"%>
		<div class="page-content d-flex align-items-stretch">
			<!-- Side Navbar -->
			<%@ include file="/WEB-INF/views/partials/instructor_sidebar.jsp"%>
			<div class="content-inner">

				<!-- 네비게이션이 들어갈 자리입니다. -->
				<div class="breadcrumb-holder container-fluid">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="instructor_first.jsp">HOME</a></li>
						<li class="breadcrumb-item active"><a
							href="instructor_point1.jsp">성적 관리</a></li>
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
											<button type="button" class="btn btn-sm btn-light btn-status" value = "강의 종료">강의
												종료</button>
											<button type="button" class="btn btn-sm btn-light btn-status" value = "강의 중">강의
												중</button>
											<button type="button" class="btn btn-sm btn-light btn-status" value = "강의 예정">강의
												예정</button>
										</div>
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>개설 과목 번호</th>
														<th>과목명</th>
														<th>개설 과목 기간</th>
														<th>과정명</th>
														<th>개설 과정 기간</th>
														<th>강의실명</th>
														<th>교재명</th>
														<th>수강생 등록 인원</th>
														<th>강의 진행 여부</th>
														<th>시험 정보</th>
													</tr>
												</thead>
												<tbody>
														<c:forEach var="os" items="${list}">
														<tr>
															<td>${os.open_subject_id}</td>
															<td>${os.subject_name}</td>
															<td>${os.subject_start_date} ~ ${os.subject_end_date}
															</td>
															<td>${os.course_name}</td>
															<td>${os.open_course_start_date} ~ ${os.open_course_end_date}</td>
															<td>${os.classroom_name}</td>
															<td><a class="subjectbook-look popover-bold" data-toggle="popover"
															title="이것이 자바다"
															data-content="<img src='${pageContext.request.contextPath}/resources/img/subjectbook_example.png' width='120' height='144'/>">${os.subjectbook_name}</a></td>
															<td>${os.student_count}</td>
															<td>${os.instructor_status}</td>
															<td><button class="btn btn-sm btn-light btn-look">보기</button></td>

														</tr>
													</c:forEach>
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
				<%@ include file="/WEB-INF/views/partials/footer.jsp"%>
			</div>
		</div>
	</div>

	<!-- 등록에 관한 모달 -->
	<!-- <div id="subjectbook_reg" role="dialog" class="modal fade text-left">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="exampleModalLabel" class="modal-title">교재 등록</h4>
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="" method="post">
						<div class="form-group">
							<label for="subjectbook_name">교재명</label> <input type="text"
								id="subjectbook_name" name="subjectbook_name" placeholder="교재명"
								class="form-control">
						</div>
						<div class="form-group">
							<label for="subjectbook_isbn">ISBN</label> <input type="text"
								id="subjectbook_isbn" name="subjectbook_isbn" placeholder="ISBN"
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
	</div> -->

	<!-- 삭제에 관한 모달 -->
	<!-- <div id="subjectbook_delete" role="dialog" class="modal fade text-left">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="exampleModalLabel" class="modal-title">교재 삭제</h4>
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<p>다음 교재를 삭제하시겠습니까?</p>
					<form action="" method="post">
						<div class="form-group">
							<label for="subjectbook_name">교재명</label> <input type="text"
								id="subjectbook_name" name="subjectbook_name" placeholder="교재명"
								class="form-control">
						</div>
						<div class="form-group">
							<label for="subjectbook_isbn">ISBN</label> <input type="text"
								id="subjectbook_isbn" name="subjectbook_isbn" placeholder="ISBN"
								class="form-control">
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
	</div> -->

	<!-- 교재 보기에 관한 모달 -->
	<div id="subjectbook_look" role="dialog" class="modal fade text-left">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="exampleModalLabel" class="modal-title">교재 보기</h4>
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">교재 보기</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">확인</button>
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