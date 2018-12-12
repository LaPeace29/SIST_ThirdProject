<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>수강생 관리 > 수강생 과정 관리</title>
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

      $(".student-look").popover({
         placement : 'left',
         trigger : "hover",
         html : true
      });

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
                     href="${pageContext.request.contextPath}/views/admin/admin_first.jsp">HOME</a></li>
                  <li class="breadcrumb-item"><a
                     href="${pageContext.request.contextPath}/views/admin/admin_student.jsp">수강생
                        관리</a></li>
                  <li class="breadcrumb-item active"><a
                     href="${pageContext.request.contextPath}/views/admin/admin_student_mng.jsp">수강생
                        과정 관리</a></li>
               </ul>
            </div>

            <!-- 테이블이 들어갈 자리입니다. -->
            <section class="table">
               <div class="container-fluid">
                  <div class="row">
                     <div class="col-lg-12">
                        <div class="card">
                           <div class="card-header">
                              <h3 class="h4">수강생 과정 관리</h3>
                           </div>
                           <div class="card-body">
                              <!-- 우상단에 위치할 등록버튼에'만' btn-reg 클래스 추가! -->
                              <div class="table-responsive">
                                 <table class="table">
                                    <thead>
                                       <tr>
                                          <th>수강생 번호</th>
                                          <th>수강생 이름</th>
                                          <th>수강생 휴대폰 번호</th>
                                          <th>수강생 등록일</th>
                                          <th>수강 횟수</th>
                                          <th>과정 관리</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                       <tr>
                                          <td>ST0001</td>
                                          <td><a class="student-look popover-bold" data-toggle="popover"
                                             title="홍길동 사진"
                                             data-content="<img src='${pageContext.request.contextPath}/resources/img/avatar-1.jpg' width='120' height='144'/>">홍길동</a></td>
                                          <td>010-2356-4528</td>
                                          <td>2017-12-20</td>
                                          <td>1회</td>
                                          <td>
                                             <div class="btn-group" role="group"
                                                aria-label="Basic example">
                                                <button type="button" class="btn btn-sm btn-light"
                                                   data-toggle="modal" data-target="#myModal01">과정
                                                   등록</button>
                                                <button type="button" class="btn btn-sm btn-light"
                                                   data-toggle="modal" data-target="#myModal02">과정
                                                   취소</button>
                                                <button type="button" class="btn btn-sm btn-light"
                                                   data-toggle="modal" data-target="#myModal03">중도
                                                   탈락</button>
                                             </div>
                                          </td>
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


   <!-- 수강생 과정 등록 -->
   <div id="myModal01" role="dialog" class="modal fade text-left">
      <div role="document" class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h4 id="exampleModalLabel" class="modal-title">수강생 과정 등록</h4>
               <button type="button" data-dismiss="modal" aria-label="Close"
                  class="close">
                  <span aria-hidden="true">×</span>
               </button>
            </div>
            <div class="modal-body">
               <div class="modal-body">
                  <p>홍길동 / 010-2356-4528</p>
                  <br>
                  <form action="" method="post">
                     <div class="form-group">
                        <label for="exampleFormControlSelect3">개설 과정</label>
                        <div class="form-group">
                           <select class="form-control" id="exampleFormControlSelect3">
                              <option>모든개설과정출력합니다.</option>
                              <option>OC0001/Java</option>
                              <option>OC0002/Oracle</option>
                              <option>4</option>
                              <option>5</option>
                           </select>
                        </div>
                     </div>
                  </form>

               </div>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-primary">확인</button>
               <button type="button" data-dismiss="modal" class="btn btn-light">취소</button>
            </div>
         </div>
      </div>
   </div>

   <!-- 수강생 과정 취소 -->
   <div id="myModal02" role="dialog" class="modal fade text-left">
      <div role="document" class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h4 id="exampleModalLabel" class="modal-title">수강생 과정 취소</h4>
               <button type="button" data-dismiss="modal" aria-label="Close"
                  class="close">
                  <span aria-hidden="true">×</span>
               </button>
            </div>
            <div class="modal-body">
               <div class="modal-body">
                  <p>홍길동 / 010-2356-4528</p>
                  <br>
                  <form action="" method="post">
                     <div class="form-group">
                        <label for="exampleFormControlSelect3">개설 과정</label>
                        <div class="form-group">
                           <select class="form-control" id="exampleFormControlSelect3">
                              <option>모든개설과정출력합니다.</option>
                              <option>OC0001/Java</option>
                              <option>OC0002/Oracle</option>
                              <option>4</option>
                              <option>5</option>
                           </select>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-primary">확인</button>
               <button type="button" data-dismiss="modal" class="btn btn-light">취소</button>
            </div>
         </div>
      </div>
   </div>

   <!-- 수강생 중도 탈락 -->
   <div id="myModal03" role="dialog" class="modal fade text-left">
      <div role="document" class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h4 id="exampleModalLabel" class="modal-title">수강생 중도 탈락</h4>
               <button type="button" data-dismiss="modal" aria-label="Close"
                  class="close">
                  <span aria-hidden="true">×</span>
               </button>
            </div>
            <div class="modal-body">
               <div class="modal-body">
                  <p>홍길동 / 010-2356-4528</p>
                  <br>
                  <form action="" method="post">
                     <div class="form-group">
                        <label for="exampleFormControlSelect3">개설 과정</label>
                        <div class="form-group">
                           <select class="form-control" id="exampleFormControlSelect3">
                              <option>OC0001/Java/2018-01-01 ~ 2018-06-06</option>
                              <option>OC0002/Java/2018-01-01 ~ 2018-06-06</option>
                              <option>OC0003/Oracle/2018-01-01 ~ 2018-06-06</option>
                              <option>OC0004/Oracle/2018-01-01 ~ 2018-06-06</option>
                              <option>OC0005/Oracle/2018-01-01 ~ 2018-06-06</option>
                           </select>
                        </div>
                     </div>

                     <div class="form-group">
                        <label for="exampleFormControlSelect3">중도 탈락 날짜</label>
                        <div class="input group">
                           <input type="date" class="form-control"
                              id="exampleInputPassword2" placeholder="날짜">
                        </div>
                     </div>
                  </form>
               </div>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-primary">확인</button>
               <button type="button" data-dismiss="modal" class="btn btn-light">취소</button>
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