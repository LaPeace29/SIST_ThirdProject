<%@ page language="java" contentType="text/html; charset=UTF-8"  
pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>쌍용교육센터</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 	<!-- Bootstrap CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
    <script src="${pageContext.request.contextPath}/resources/script/common.js"></script>
    
	<script>
	
		$(document).ready(function() {
			
		});
	
	</script>

</head>
<body>

	<div class="page">
        <!-- Main Navbar-->
        <%@ include file="/WEB-INF/views/partials/admin_header.jsp" %>
        <div class="page-content d-flex align-items-stretch">
            <!-- Side Navbar -->
            <%@ include file="/WEB-INF/views/partials/admin_sidebar.jsp" %>

            <div class="content-inner">

	            <!-- 네비게이션이 들어갈 자리입니다. -->
				<div class="breadcrumb-holder container-fluid">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/views/admin/admin_first.jsp">HOME</a></li>
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/views/admin/admin_grade_student1.jsp">수강생 개인 성적 조회</a></li>
						<!-- 자신이 현재 위치한 마지막에 active 클래스 추가 -->
						<li class="breadcrumb-item active"><a href="${pageContext.request.contextPath}/views/admin/admin_grade_student2.jsp">과정 정보</a></li>
					</ul>
				</div>
				
				<!-- 테이블이 들어갈 자리입니다. -->
				<section class="table">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header d-flex align-items-center">
										<h3 class="h4">홍길동 / 010-0000-0000 수강 과정 정보</h3>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>개설 과정 번호</th>
														<th>과정명</th>
														<th>개설 과정 기간</th>
														<th>강의실명</th>
														<th>개설 과목 등록 개수</th>
														<th>개설 과목</th>
													</tr>
												</thead>
												<tbody>
													<tr>
		                                                <td>OC0015</td>
		                                                <td>Python &amp; Java 응용 SW 실무 개발자 양성 과정</td>
		                                                <td>2018-06-25~2019-01-17</td>
		                                                <td>2강의실</td>
		                                                <td>3개</td>
		                                                <td><button type="button" class=" btn btn-sm btn-light">보기</button></td>
		                                           </tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								
								<div class="card">
									<div class="card-header d-flex align-items-center">
										<h3 class="h4">Python &amp; Java 응용 SW 실무 개발자 양성 과정(2018-06-25~2019-01-17) 과목 정보</h3>
									</div>
									<div class="card-body">
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
		                                                <td></td>
		                                                <td></td>
		                                                <td></td>
		                                                <td></td>
		                                                <td></td>
		                                                <td><button type="button" class=" btn btn-sm btn-light">보기</button></td>
		                                           </tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								
								
								<div class="card">
									<div class="card-header d-flex align-items-center">
										<h3 class="h4">Java SE(2018-06-25~2018-08-10) 시험 정보</h3>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>시험 번호</th>
														<th>출결 점수(배점)</th>
														<th>필기 점수(배점)</th>
														<th>실기 점수(배점)</th>
														<th>총점</th>
														<th>시험 날짜</th>
														<th>시험 문제 파일</th>
													</tr>
												</thead>
												<tbody>
													<tr>
		                                                <td></td>
		                                                <td></td>
		                                                <td></td>
		                                                <td></td>
		                                                <td></td>
		                                                <td></td>
		                                                <td></td>
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
                <%@ include file="/WEB-INF/views/partials/footer.jsp" %>
            </div>
        </div>
    </div>
    

	<!-- JavaScript files-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/popper.js/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery.cookie/jquery.cookie.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/chart.js/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-validation/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/charts-home.js"></script>
    
    <!-- Main File-->
    <script src="${pageContext.request.contextPath}/resources/js/front.js"></script>

</body>
</html>