<%@ page language="java" contentType="text/html; charset=UTF-8"  
pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>강사 계정 관리</title>
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
    <style>

    </style>
	<script>
	
		$(document).ready(function() {
			
			$(".instructor-look").popover({ 
				placement : 'left',
				trigger: "hover", 
				html: true
			});
			
			$(".instructor_manage").on("click", function(){
				window.location.assign("${pageContext.request.contextPath}/views/admin/30_admin_instructor_mng2.jsp");
			});
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
            <div class="content-inner">
				<div class="breadcrumb-holder container-fluid">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/views/admin/18_admin_first.jsp">HOME</a></li>
						<li class="breadcrumb-item"><a href="">강사 계정 관리</a></li>
					</ul>
				</div>
				
				<section class="table">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header d-flex align-items-center">
										<h3 class="h4">강사 목록</h3>
									</div>
									<div class="card-body">
										<!-- 우상단에 위치할 등록버튼에'만' btn-reg 클래스 추가! -->
										<button class="btn btn-primary btn-sm btn-reg" data-toggle="modal" data-target="#instructor_reg">강사 등록</button>
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>강사 번호</th>
		                                                <th>강사 이름</th>
		                                                <th>강사 휴대폰번호</th>
		                                                <th>강사 등록일</th>
		                                                <th>강의 가능 과목</th>
		                                                <th>강의 과목 조회</th>
		                                                <th>삭제</th>
		                                                <th>비밀번호 초기화</th>
													</tr>
												</thead>
												<tbody>
		                                            <tr>
		                                                <td>INS001</td>
		                                                <td><a class="instructor-look" data-toggle="popover" title="김강사 사진" data-content="<img src='${pageContext.request.contextPath}/resources/img/avatar-1.jpg' width='120' height='144'/>">김강사</a></td>
		                                                <td>010-1234-4321</td>
		                                                <td>2018-01-02</td>
		                                                <td>Java SE, Oracle<br><button class="btn btn-xs btn-light" data-toggle="modal" data-target="#subject_manage">강의 가능 과목 관리</button></td>
		                                                <td><button class="btn btn-sm btn-light instructor_manage">조회</button></td>
		                                                <td><button class="btn btn-sm btn-light btn-del" data-toggle="modal" data-target="#instructor_delete">삭제</button></td>
		                                                <td><button class="btn btn-sm btn-light btn-del" data-toggle="modal" data-target="#password_reset">초기화</button></td>
		                                            </tr>
		                                            <tr>
		                                                <td>INS002</td>
		                                                <td>이강사</td>
		                                                <td>010-4444-4321</td>
		                                                <td>2018-05-05</td>
		                                                <td>MySQL<br><button class="btn btn-xs btn-light" data-toggle="modal" data-target="#subject_manage">강의 가능 과목 관리</button></td>
		                                                <td><button class="btn btn-sm btn-light instructor_manage">조회</button></td>
		                                                <td><button class="btn btn-sm btn-light btn-del">삭제</button></td>
		                                                <td><button class="btn btn-sm btn-light btn-del">초기화</button></td>
		                                            </tr>
		                                            <tr>
		                                                <td>INS003</td>
		                                                <td>홍강사</td>
		                                                <td>010-1111-4321</td>
		                                                <td>2018-05-05</td>
	                                               		<td>JSP<br><button class="btn btn-xs btn-light" data-toggle="modal" data-target="#subject_manage">강의 가능 과목 관리</button></td>
		                                                <td><button class="btn btn-sm btn-light instructor_manage">조회</button></td>
		                                                <td><button class="btn btn-sm btn-light btn-del">삭제</button></td>
		                                                <td><button class="btn btn-sm btn-light btn-del">초기화</button></td>
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
			                                            <select class="form-control text-small" id="key" name="key">
			                                                <option class="text-small" value="instructor_id">강사번호</option>
			                                                <option class="text-small" value="instructor_name">강사이름</option>
			                                                <option class="text-small" value="instructor_phone">강사휴대폰번호</option>
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
	<div id="instructor_reg" role="dialog" class="modal fade text-left">
		<div role="document" class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="exampleModalLabel" class="modal-title">강사 등록</h4>
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="" method="post">
						<div class="row">
							<div class="col-lg-3">
								<img src="${pageContext.request.contextPath}/resources/img/avatar-1.jpg" width="100%">
							</div>
							<div class="col-lg-9">
								<div class="form-group">
									<label for="instructor_name">이름</label> 
									<input type="text" id="instructor_name" name="instructor_name" placeholder="이름" class="form-control">
								</div>
								<div class="form-group">
									<label for="instructor_pw">비밀번호</label> 
									<input type="text" id="instructor_pw" name="instructor_pw" placeholder="비밀번호" class="form-control">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="instructor_phone">휴대폰번호</label> 
							<input type="text" id="instructor_phone" name="instructor_phone" placeholder="휴대폰번호" class="form-control">
						</div>
						<div class="form-group">
							<label for="instructor_regDate">등록일</label> 
							<input type="text" id="instructor_regDate" name="instructor_regDate" placeholder="등록일" class="form-control">
						</div>
						<div class="form-group">
							<label for="instructor_address">주소</label> 
							<input type="text" id="instructor_address" name="instructor_address" placeholder="주소" class="form-control">
						</div>
						<div class="form-group">
							<label for="instructor_email">이메일</label> 
							<input type="text" id="instructor_email" name="instructor_email" placeholder="휴대폰번호" class="form-control">
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
	<div id="instructor_delete" role="dialog" class="modal fade text-left">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="exampleModalLabel" class="modal-title">강사 삭제</h4>
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<p>다음 강사를 삭제하시겠습니까?</p>
					<form action="" method="post">
						<div class="form-group">
							<label for="instructor_id">강사번호</label> 
							<input type="text" id="instructor_id" name="instructor_id" placeholder="강사번호" class="form-control">
						</div>
						<div class="form-group">
							<label for="instructor_name">이름</label> 
							<input type="text" id="instructor_name" name="instructor_name" placeholder="이름" class="form-control">
						</div>
						<div class="form-group">
							<label for="instructor_phone">휴대폰번호</label> 
							<input type="text" id="instructor_phone" name="instructor_phone" placeholder="휴대폰번호" class="form-control">
						</div>
						<div class="form-group">
							<label for="instructor_regDate">등록일</label> 
							<input type="text" id="instructor_regDate" name="instructor_regDate" placeholder="등록일" class="form-control">
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
					<p>다음 강사 비밀번호를 초기화하시겠습니까?</p>
					<form action="" method="post">
						<div class="form-group">
							<label for="instructor_id">강사번호</label> 
							<input type="text" id="instructor_id" name="instructor_id" placeholder="강사번호" class="form-control">
						</div>
						<div class="form-group">
							<label for="instructor_name">이름</label> 
							<input type="text" id="instructor_name" name="instructor_name" placeholder="이름" class="form-control">
						</div>
						<div class="form-group">
							<label for="instructor_pw">신규 비밀번호</label> 
							<input type="password" id="instructor_pw" name="instructor_pw" placeholder="신규 비밀번호" class="form-control">
						</div>
						<div class="form-group">
							<label for="instructor_pw2">신규 비밀번호 확인</label> 
							<input type="password" id="instructor_pw2" name="instructor_pw2" placeholder="신규 비밀번호 확인" class="form-control">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">확인</button>
					<button type="button" data-dismiss="modal"
						class="btn btn-light">취소</button>
				</div>
			</div>
		</div>
	</div>
	
		<!-- 강의 가능 과목 관리 모달 -->
	<div id="subject_manage" role="dialog" class="modal fade text-left">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="exampleModalLabel" class="modal-title">강의 가능 과목 관리</h4>
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<p>김강사 / 010-1234-1234</p>
					<form action="" method="post">
					<div class="form-group">
					<div class="form-checkbox">
						<!-- label style을 css로 빼기 ~~~~~~~~~~~~~~~~~~~~~~-->
                              <input type="checkbox" class="checkbox-template" value="student" name="loginType"  checked >
                              <label for="checkbox" >Java SE</label>
                    </div>
                    <div class="form-checkbox">
                              <input type="checkbox" class="checkbox-template" value="instructor" name="loginType" checked >
                              <label for="checkbox" >Oracle</label>
                    </div>
                    <div class="form-checkbox">
                              <input type="checkbox" class="checkbox-template" value="admin" name="loginType" checked>
                              <label for="checkbox" >HTML5</label>
                    </div>
                    <div class="form-checkbox">
                              <input type="checkbox" class="checkbox-template" value="admin" name="loginType" >
                              <label for="checkbox" >CSS</label>                    
                    </div>
                    <div class="form-checkbox">
                              <input type="checkbox" class="checkbox-template" value="admin" name="loginType" >
                              <label for="checkbox">JavaScript</label>                      
                    </div>
                    <div class="form-checkbox">
                               <input type="checkbox" class="checkbox-template" value="admin" name="loginType" >
                              <label for="checkbox">...</label>                   
                    </div>
                    <div class="form-checkbox">
                               <input type="checkbox" class="checkbox-template" value="admin" name="loginType" >
                              <label for="checkbox">...</label>                   
                    </div>
                    <div class="form-checkbox">
                               <input type="checkbox" class="checkbox-template" value="admin" name="loginType" >
                              <label for="checkbox">...</label>                   
                    </div>	               
	               </div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">확인</button>
					<button type="button" data-dismiss="modal"
						class="btn btn-light">취소</button>
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