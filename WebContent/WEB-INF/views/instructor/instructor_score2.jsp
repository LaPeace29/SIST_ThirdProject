<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 

String open_subject_id = request.getParameter("open_subject_id");

%>
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

//+"&exam_id="+exam_id
   $(document).ready(function() {
	    	 var open_subject_id = "<%=open_subject_id %>";
	   $("#card").css("display","none");
	      $(".btn-student").on("click", function() {
				$("#card").css("display","block");
	    	 var exam_id = $(this).parents("tr").find("td:eq(0)").text();
	   			$.ajax({
	   				url:"${pageContext.request.contextPath}/instructor/score2Ajax?open_subject_id="+open_subject_id+"&exam_id="+exam_id
	   				
	   				,dataType: 'json' ,
	   				type:'Post'
	   				,success: function(data_) {
	   					console.log(data_);
	   					var doc_=JSON.stringify(data_);
	   					var doc = JSON.parse(doc_);
	   					console.log(doc);
	   					
	   					var txt = "";
	   					for(var a=0; a<doc.length; ++a) {
	   						var temp = doc[a];
	   						
	   						var completion_date = new Date(temp.completion_date);
	   						var student_regDate = new Date(temp.student_regDate);
	   						
	   						txt += "<tr><td>"+temp.student_id+"</td><td>"+temp.student_name+"</td><td>"+temp.student_phone+"</td><td>" + student_regDate.getFullYear() +"-" + (student_regDate.getMonth()+1) + "-" + student_regDate.getDate()
                            +"</td><td>"+temp.completion_status+"</td><td>"+ completion_date.getFullYear() +"-" + (completion_date.getMonth()+1) + "-" + completion_date.getDate()
                            +"</td><td>"+temp.attendance_score+"</td><td>"+temp.write_score+"</td><td>"+temp.skill_score+"</td><td>"+temp.total_score+"</td><td>"+
	   						"<div class=\"btn-group\"><button class=\" btn btn-light btn-sm\"data-toggle=\"modal\" data-target=\"#score_reg\">입력</button><button class=\"btn btn-sm btn-light btn-del\"data-toggle=\"modal\" data-target=\"#subjectbook_delete\">삭제</button></div></td></tr>";  						  
	   					}
	   					$("#tbody").html(txt);
	   			}}); 
	        }); 
      
<%--       $(".btn-student").on("click", function() {
         	var open_subject_id = "<%=open_subject_id %>";
         	console.log(open_subject_id);
         	location.assign("${pageContext.request.contextPath}/admin/instructor/mng2?instructor_id="+instructor_id+"&completion="+$(this).val()+"&instructor_name="+instructor_name)
         	
        }); --%>
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
                  <li class="breadcrumb-item"><a href="instructor_first.jsp">HOME</a></li>
                  <li class="breadcrumb-item"><a href="instructor_score1.jsp">성적 관리</a></li>
                  <li class="breadcrumb-item active"><a href="instructor_score2.jsp">시험 정보</a></li>
               </ul>
            </div>

            <!-- 테이블이 들어갈 자리입니다. -->
            <section class="table">
               <div class="container-fluid">
                  <div class="row">
                     <div class="col-lg-12">
                        <div class="card">
                           <div class="card-header d-flex align-items-center">
                             <c:forEach var="o" items="${list2}">
								<h3 class="h4"> ${o.course_name} (${o.open_course_start_date} ~ ${o.open_course_end_date}) / ${o.subject_name} (${o.subject_start_date} ~ ${o.subject_end_date})
								</h3>
								</c:forEach>
                           </div>
                           <div class="card-body">
                              <!-- 우상단에 위치할 등록버튼에'만' btn-reg 클래스 추가! -->
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
                                          <th>성적 등록 인원수</th>
                                          <th>성적 입력 여부</th>
                                          <th>수강생 정보</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                       <!-- <tr>
                                          <td>EXAM0013</td>
                                          <td>30</td>
                                          <td>30</td>
                                          <td>40</td>
                                          <td>2018-09-10</td>
                                          <td>OS0032_180910.zip<br>
                                             <button class="btn btn-xs btn-light btn-look"
                                                id="btnDown">다운로드</button></td>
                                          <td>2명</td>
                                          <td>성적 입력 완료</td>
                                          <td><button class="btn btn-sm btn-light btn-student ">보기</button></td>
                                       </tr> -->
                                       <c:forEach var ="e" items="${list}">
                                      
                                       <tr>
                                       
                                       <td>${e.exam_id}</td>
                                       <td>${e.attendance_point}</td>
                                       <td>${e.write_point}</td>
                                       <td>${e.skill_point}</td>
                                       <td>${e.exam_date}</td>
                                       <td>${e.exam_file}</td>
                                       <td>${e.student_count}</td>
                                       <td>${e.score_status}</td>
                                       <td><button class="btn btn-sm btn-light btn-student ">보기</button></td>
                                      
                                       </tr>
                                       
                                       </c:forEach>
                                    </tbody>
                                 </table>
                              </div>
                           </div>
                        </div>
                        <div class="card"  id ="card">
                           <div class="card-header d-flex align-items-center">
                              <h3 class="h4">수강생 정보</h3>
                           </div>
                           <div class="card-body">
                              <div class="table-responsive">
                                 <table class="table">
                                    <thead>
                                       <tr>
                                          <th>수강생 번호</th>
                                          <th>수강생 이름</th>
                                          <th>수강생 휴대폰번호</th>
                                          <th>수강생 등록일</th>
                                          <th>수료 여부</th>
                                          <th>날짜</th>
                                          <th>출석 점수</th>
                                          <th>필기 점수</th>
                                          <th>실기 점수</th>
                                          <th>총점</th>
                                          <th>성적</th>
                                       </tr>
                                    </thead>
                                    <tbody id="tbody">
                                    
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
   <div id="score_reg" role="dialog" class="modal fade text-left">
      <div role="document" class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h4 id="exampleModalLabel" class="modal-title">성적 등록</h4>
               <button type="button" data-dismiss="modal" aria-label="Close"
                  class="close">
                  <span aria-hidden="true">×</span>
               </button>
            </div>
            <p align = "center">HTML5(2018-00-00~2018-00-00) 시험날짜 : 2018-00-00 조인성 /
               010-1234-1234</p>
            <div class="modal-body">
               <form action="" method="post">
                  <div class="form-group">
                     <label for="subjectbook_name">출석 점수</label> <input type="text"
                        id="attendance_score" name="attendance_score" placeholder="출석 점수"
                        class="form-control">
                  </div>
                  <div class="form-group">
                     <label for="subjectbook_isbn">필기 점수</label> <input type="text"
                        id="write_score" name="write_score" placeholder="필기 점수"
                        class="form-control">
                  </div>
                  <div class="form-group">
                     <label for="subjectbook_isbn">실기 점수</label> <input type="text"
                        id="skill_score" name="skill_score" placeholder="실기 점수"
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

   <!-- 삭제에 관한 모달 -->
   <div id="subjectbook_delete" role="dialog" class="modal fade text-left">
      <div role="document" class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h4 id="exampleModalLabel" class="modal-title">성적 삭제</h4>
               <button type="button" data-dismiss="modal" aria-label="Close"
                  class="close">
                  <span aria-hidden="true">×</span>
               </button>
            </div>
            <div class="modal-body">
               <p>다음 성적 정보를 삭제하시겠습니까?</p>
               <form action="" method="post">
                  <div class="form-group">
                     <label for="subjectbook_name">수강생 번호</label> <input type="text"
                        id="student_id" name="student_id" placeholder="ST00031"
                        class="form-control" readonly="readonly">
                  </div>
                     <div class="form-group">
                     <label for="subjectbook_name">이름 </label> <input type="text"
                        id="attendance_score" name="attendance_score" placeholder="조인성"
                        class="form-control" readonly="readonly">
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