<%@ page language="java" contentType="text/html; charset=UTF-8"  
pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="side-navbar">
    <!-- Sidebar Header-->
    <div class="sidebar-header d-flex align-items-center">
        <div class="avatar">
        	<img src="${pageContext.request.contextPath}/resources/img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle">
        </div>
        <div class="title">
            <h1 class="h4">관리자</h1>
            <p>Admin</p>
        </div>
    </div>
    <!-- Sidebar Navidation Menus-->
    <span class="heading">Main</span>
    <ul class="list-unstyled">
		<li>
			<a href="#exampledropdownDropdown01" data-toggle="collapse"> <i class="icon-interface-windows"></i>기초 정보 관리</a>
			<ul id="exampledropdownDropdown01" class="collapse list-unstyled ">
				<li><a href="${pageContext.request.contextPath}/views/admin/admin_basic_course.jsp">과정 관리</a></li>
				<li><a href="${pageContext.request.contextPath}/views/admin/admin_basic_subject.jsp">과목 관리</a></li>
				<li><a href="${pageContext.request.contextPath}/views/admin/admin_basic_classroom.jsp">강의실 관리</a></li>
				<li><a href="${pageContext.request.contextPath}/views/admin/admin_basic_subjectbook.jsp">교재 관리</a></li>
			</ul>
		</li>
		<li>
			<a href="${pageContext.request.contextPath}/views/admin/admin_instructor_mng1.jsp"><i class="icon-user"></i>강사 계정 관리</a>
		</li>
		<li>
			<a href="${pageContext.request.contextPath}/views/admin/admin_opencourse1.jsp"><i class="fa fa-bar-chart"></i>개설 과정 관리</a>
		</li>
		<li>
			<a href="${pageContext.request.contextPath}/views/admin/admin_opensubject.jsp"><i class="icon-padnote"></i>개설 과목 관리</a>
		</li>
		<li>
			<a href="${pageContext.request.contextPath}/views/admin/admin_student_mng1.jsp"><i class="icon-padnote"></i>수강생 관리</a>
		</li>
		<li>
			<a href="#exampledropdownDropdown03" data-toggle="collapse"> <i class="icon-interface-windows"></i>성적 조회</a>
			<ul id="exampledropdownDropdown03" class="collapse list-unstyled ">
				<li><a href="${pageContext.request.contextPath}/views/admin/admin_grade_opencourse1.jsp">개설 과정 성적 조회</a></li>
				<li><a href="${pageContext.request.contextPath}/views/admin/admin_grade_student1.jsp">수강생 개인 성적 조회</a></li>
			</ul>
		</li>

	</ul>
</nav>