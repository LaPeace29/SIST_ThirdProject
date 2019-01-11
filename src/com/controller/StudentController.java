package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.domain.Exam;
import com.domain.Notice;
import com.domain.OpenCourse;
import com.domain.Student;
import com.service.ExamService;
import com.service.NoticeService;
import com.service.OpenCourseService;
import com.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Resource(name = "studentService")
	private StudentService studentService;

	@Resource(name = "openCourseService")
	private OpenCourseService openCourseService;

	@Resource(name = "noticeService")
	private NoticeService noticeService;
	
	@Resource(name = "examService")
	private ExamService examService;

	// 첫 페이지
	@RequestMapping("/first")
	public String student_first(Model model) {
		List <Notice> notice = new ArrayList<Notice>();
		List <OpenCourse> oclist = new ArrayList<OpenCourse> ();
		
		oclist = this.openCourseService.homePrint();
 		notice = this.noticeService.notice();
 

 		model.addAttribute("oclist", oclist);
 		model.addAttribute("end",  oclist.get(0).getOpen_course_end_date());
 		model.addAttribute("notice", notice);
		
		return "/student/student_first";

	}

	// 수강생 정보
	@RequestMapping("/info")
	public String student_info(Model model) {

		List <Student> stinfo = new ArrayList<Student>();
		stinfo = this.studentService.prints1();
		model.addAttribute("stinfo", stinfo);
		
		return "/student/student_info";
	}

	// 성적 조회
	@RequestMapping("/score1")
	public String student_score1(Model model) {

		List <Student> stinfo = new ArrayList<Student>();
		List <OpenCourse> list = new ArrayList<OpenCourse>();
		stinfo = this.studentService.prints1();
		list = this.openCourseService.prints1();
		model.addAttribute("stinfo", stinfo);
		model.addAttribute("list", list);
		
		return "/student/student_score1";
	}

	// 성적 조회 / 수강생 성적 조회
	@RequestMapping("/score2")
	public String student_score2(Exam e, String open_course_id, Model model) {
		List <OpenCourse> list = new ArrayList<OpenCourse>();
		List <Exam> list2 = new ArrayList<Exam>();
		
		System.out.println(e.getOpen_course_id());
		
		list = this.openCourseService.prints1(open_course_id);
		list2 = this.examService.prints1(e);
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		
		return "/student/student_score2";
	}
	
	@RequestMapping("/changepwPage")
	public String student_changepwPage(String open_course_id, Model model) {
		
		return "/student/student_changepw";
	}
	
	// 비밀번호 변경
	// 일단 비밀번호 변경 되면 /first 페이지로 안되면 원래페이지 그대로
	@RequestMapping("/changepw")
	public String student_changepw(Student s, RedirectAttributes rttr) {
		
		int result = this.studentService.changepw(s);

		if (result == 1) {
			return "redirect:/student/first";
		}else {
			return "redirect:/student/changepwPage"; 
		}
	}
}