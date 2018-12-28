package com.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.AdminService;
import com.service.InstructorService;
import com.service.StudentService;

@Controller
public class LoginController {

	@Resource(name = "studentService")
	private StudentService studentService;

	@Resource(name = "instructorService")
	private InstructorService instructorService;

	@Resource(name = "adminService")
	private AdminService adminService;
	   
	@RequestMapping("/index")
	public String index() {

		//WEB-INF/views/login/loginForm.jsp
		return "common/common_login";
	}
	
	@RequestMapping("/common/login")
	public String login(HttpServletRequest request, HttpServletRequest response, HttpSession session, String loginType) {

		String url = "redirect:/common/loginFail";
		
		if(loginType.equals("student")) {
			
			url = "student/student_first";
		} else if(loginType.equals("instructor")) {
			url = "instructor/instructor_first";
		} else if(loginType.equals("admin")) {
			url = "admin/admin_first";
		} 
		return url;
	}
	
	@RequestMapping("/common/loginFail")
	public String loginFail() {
		
		return "common/common_loginfailform";
	}
	
	@RequestMapping("/common/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "common/common_logoutform";
	}
}
