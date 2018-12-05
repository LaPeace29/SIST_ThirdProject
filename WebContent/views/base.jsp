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
        <%@ include file="/views/partials/header.jsp" %>
        <div class="page-content d-flex align-items-stretch">
            <!-- Side Navbar -->
            <%@ include file="/views/partials/admin_sidebar.jsp" %>
            <!-- 맡은 페이지에 따라 유동적으로 교체하고 나머지는 삭제 -->
            <%-- <%@ include file="/views/partials/student_sidebar.jsp" %> --%>
            <%-- <%@ include file="/views/partials/instructor_sidebar.jsp" %> --%>
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
						<li class="breadcrumb-item"><a href="index.html">Home</a></li>
						<li class="breadcrumb-item"><a href="index.html">기초 정보 관리</a></li>
						<!-- 자신이 현재 위치한 마지막에 active 클래스 추가 -->
						<li class="breadcrumb-item active"><a href="index.html">교재 관리</a></li>
					</ul>
				</div>
				
				<!-- 테이블이 들어갈 자리입니다. -->
				<section class="table">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header d-flex align-items-center">
										<h3 class="h4">교재 목록</h3>
									</div>
									<div class="card-body">
										<!-- 우상단에 위치할 등록버튼에'만' btn-reg 클래스 추가! -->
										<button class="btn btn-primary btn-sm btn-reg" data-toggle="modal" data-target="#subjectbook_reg">교재 등록</button>
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>교재번호</th>
														<th>교재명</th>
														<th>ISBN</th>
														<th>삭제</th>
													</tr>
												</thead>
												<tbody>
													<tr>
		                                                <td>SB00001</td>
		                                                <!-- 
		                                                교재보기, 강사사진보기, 수강생사진보기 등 테이블에 글자와 같이 들어가는 것은
		                                                글 <br> 버튼 형식으로 작성!!!
		                                                이때 버튼에 btn-xs btn-light 클래스 꼭 추가해주세요
		                                                 -->
		                                                <td>이것이 자바다<br><button class="btn btn-xs btn-light btn-look btn-book-look" data-toggle="modal" data-target="#subjectbook_look">교재 보기</button></td>
		                                                <td>1111111111111111</td>
		                                                <!-- 
		                                                삭제, 초기화 등 테이블에 버튼만 있는 경우 아래와 같은 클래스 추가
		                                                btn btn-sm btn-secondary 
		                                                 -->
		                                                <td><button class="btn btn-sm btn-secondary btn-del" data-toggle="modal" data-target="#subjectbook_delete">삭제</button></td>
		                                            </tr>
		                                            <tr>
		                                                <td>SB00002</td>
		                                                <td>이것이 Oracle이다<br><button class="btn btn-xs btn-light btn-look btn-book-look">교재 보기</button></td>
		                                                <td>2222222222222222</td>
		                                                <td><button class="btn btn-sm btn-secondary btn-del">삭제</button></td>
		                                            </tr>
		                                            <tr>
		                                                <td>SB00003</td>
		                                                <td>이것이 HTML5이다<br><button class="btn btn-xs btn-light btn-look btn-book-look">교재 보기</button></td>
		                                                <td>3333333333333333</td>
		                                                <td><button class="btn btn-sm btn-secondary btn-del">삭제</button></td>
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
			                                            <select class="form-control text-small" id="key" name="key">
			                                                <option class="text-small" value="subjectbook_id">교재번호</option>
			                                                <option class="text-small" value="subjectbook_name">교재명</option>
			                                                <option class="text-small" value="subjectbook_isbn">ISBN</option>
			                                            </select>
			                                            <input type="text" class="form-control" id="value" name="value" placeholder="Search">
			                                            <!-- 검색 진행 버튼 -->
			                                            <button type="button" class="btn btn-md btn-secondary" id="btnSearch">
			                                                <i class="fa fa-search"></i>
			                                            </button>
			                                        </div>
			                                    </div>
			                                </form>
		                                </div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
                <!-- Page Footer-->
                <%@ include file="/views/partials/footer.jsp" %>
            </div>
        </div>
    </div>
    
	<!-- 등록에 관한 모달 -->
	<div id="subjectbook_reg" role="dialog" class="modal fade text-left">
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
							<label for="subjectbook_name">교재명</label> 
							<input type="text" id="subjectbook_name" name="subjectbook_name" placeholder="교재명" class="form-control">
						</div>
						<div class="form-group">
							<label for="subjectbook_isbn">ISBN</label> 
							<input type="text" id="subjectbook_isbn" name="subjectbook_isbn" placeholder="ISBN" class="form-control">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">등록</button>
					<button type="button" data-dismiss="modal" class="btn btn-secondary">취소</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 삭제에 관한 모달 -->
	<div id="subjectbook_delete" role="dialog" class="modal fade text-left">
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
							<label for="subjectbook_name">교재명</label> 
							<input type="text" id="subjectbook_name" name="subjectbook_name" placeholder="교재명" class="form-control">
						</div>
						<div class="form-group">
							<label for="subjectbook_isbn">ISBN</label> 
							<input type="text" id="subjectbook_isbn" name="subjectbook_isbn" placeholder="ISBN" class="form-control">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">확인</button>
					<button type="button" data-dismiss="modal" class="btn btn-secondary">취소</button>
				</div>
			</div>
		</div>
	</div>
	
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
				<div class="modal-body">
					교재 보기
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">확인</button>
				</div>
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