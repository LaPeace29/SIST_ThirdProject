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
		<li class="active">
			<a href="index.html"><i class="icon-home"></i>Home</a>
		</li>
		<li>
			<a href="tables.html"><i class="icon-grid"></i>Tables</a>
		</li>
		<li>
			<a href="charts.html"><i class="fa fa-bar-chart"></i>Charts</a>
		</li>
		<li>
			<a href="forms.html"><i class="icon-padnote"></i>Forms</a>
		</li>
		<li>
			<a href="#exampledropdownDropdown" data-toggle="collapse"> <i class="icon-interface-windows"></i>Example dropdown</a>
			<ul id="exampledropdownDropdown" class="collapse list-unstyled ">
				<li><a href="#">Page</a></li>
				<li><a href="#">Page</a></li>
				<li><a href="#">Page</a></li>
			</ul>
		</li>
		<li>
			<a href="login.html"><i class="icon-interface-windows"></i>Login page</a>
		</li>
	</ul>
</nav>