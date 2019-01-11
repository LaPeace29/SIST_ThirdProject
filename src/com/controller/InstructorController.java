package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.domain.Exam;
import com.domain.Instructor;
import com.domain.Notice;
import com.domain.OpenSubject;
import com.domain.Student;
import com.service.ExamService;
import com.service.InstructorService;
import com.service.NoticeService;
import com.service.OpenSubjectService;
import com.service.StudentService;

@Controller
@RequestMapping("/instructor")
public class InstructorController {

	@Resource(name = "instructorService")
	private InstructorService instructorService;

	@Resource(name = "examService")
	private ExamService examService;

	@Resource(name = "openSubjectService")
	private OpenSubjectService openSubjectService;

	@Resource(name = "studentService")
	private StudentService studentService;

	@Resource(name = "noticeService")
	private NoticeService noticeService;
	
	// 공지사항 페이지
	@RequestMapping("/first")
	public String instructorFirst(Model model, HttpServletRequest request) {

		List<OpenSubject> list = this.openSubjectService.homePrint();
		List<Notice> list2 = this.noticeService.notice();

		model.addAttribute("list", list);
		model.addAttribute("list2", list2);

		return "instructor/instructor_first";
	}

	// 강사 정보 페이지
	@RequestMapping("/info")
	public String instructorInfo(Model model) {

		return "instructor/instructor_info";
	}

	// schedule1 페이지
	@RequestMapping("/schedule1")
	public String instructorSchedule1(Model model, OpenSubject os, HttpSession session) {
		
		Instructor ins = (Instructor) session.getAttribute("instructor");
		os.setInstructor_id(ins.getInstructor_id());
		
		List<Instructor> list = this.instructorService.printi1(os);
		List<OpenSubject> list2 = this.openSubjectService.printi1(os);
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);

		return "instructor/instructor_schedule1";
	}

	// schedule1 페이지
	@RequestMapping("/schedule11")
	public String instructorSchedule11(Model model, OpenSubject os, HttpSession session) {
		
		Instructor ins = (Instructor) session.getAttribute("instructor");
		os.setInstructor_id(ins.getInstructor_id());
		
		List<Instructor> list = this.instructorService.printi1(os);
		List<OpenSubject> list2 = this.openSubjectService.printi2(os);
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);

		return "instructor/instructor_schedule1";
	}

	// schedule2 페이지
	@RequestMapping("/schedule2")
	public String instructorSchedule2(Model model, OpenSubject os, HttpSession session) {
		
		Instructor ins = (Instructor) session.getAttribute("instructor");
		os.setInstructor_id(ins.getInstructor_id());

		List<OpenSubject> list = this.openSubjectService.instructor_title(os);
		List<Student> list2 = this.studentService.printi1(os);
		
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		
		return "instructor/instructor_schedule2";
	}
	
	// point1 페이지
	@RequestMapping("/point1")
	public String instructorPoint1(Model model, OpenSubject os) {

		List<OpenSubject> list = this.openSubjectService.printi1(os);
		model.addAttribute("list", list);

		return "instructor/instructor_point1";
	}
	
	// point1 페이지
	@RequestMapping("/point11")
	public String instructorPoint11(Model model, OpenSubject os, HttpSession session) {
		
		Instructor ins = (Instructor) session.getAttribute("instructor");
		os.setInstructor_id(ins.getInstructor_id());
		
		List<OpenSubject> list = this.openSubjectService.printi2(os);
		model.addAttribute("list", list);
		
		return "instructor/instructor_point1";
	}

	// point2 페이지
	@RequestMapping("/point2")
	public String instructorPoint2(Model model, OpenSubject os, HttpSession session) {

		Instructor ins = (Instructor) session.getAttribute("instructor");
		os.setInstructor_id(ins.getInstructor_id());
		
		List<Exam> list = this.examService.print3(os);
		List<OpenSubject> list2 = this.openSubjectService.instructor_title(os);

		model.addAttribute("list", list);
		model.addAttribute("list2", list2);

		return "instructor/instructor_point2";
	}

	// point2 인서트
	@RequestMapping("/insert")
	public String pointInsert(Exam e, RedirectAttributes rttr) {

		return "redirect:instructor/instructor/point2";

	}

	// AJAX(score2 페이지)
	@RequestMapping(value = "/score2Ajax", produces = "application/json", method = RequestMethod.POST)
	@ResponseBody
	public List<Exam> score2Ajax(Model model, Exam e) {

		List<Exam> list = this.examService.print4(e);

		return list;
	}

	// score1 페이지
	@RequestMapping("/score1")
	public String instructorScore1(Model model, OpenSubject os) {

		List<OpenSubject> list = this.openSubjectService.printi1(os);
		model.addAttribute("list", list);

		return "instructor/instructor_score1";
	}

	// score1 페이지
	@RequestMapping("/score11")
	public String instructorScore11(Model model, OpenSubject os, HttpSession session) {
		
		Instructor ins = (Instructor) session.getAttribute("instructor");
		os.setInstructor_id(ins.getInstructor_id());
		
		List<OpenSubject> list = this.openSubjectService.printi2(os);
		model.addAttribute("list", list);
		
		return "instructor/instructor_score1";
	}
	
	// score2 페이지
	@RequestMapping("/score2")
	public String instructorScore2(Model model, OpenSubject os, HttpSession session) {
		
		Instructor ins = (Instructor) session.getAttribute("instructor");
		os.setInstructor_id(ins.getInstructor_id());

		List<Exam> list = this.examService.printi1(os);
		List<OpenSubject> list2 = this.openSubjectService.instructor_title(os);

		model.addAttribute("list", list);
		model.addAttribute("list2", list2);

		return "instructor/instructor_score2";
	}

	// schedule2 입력
	@RequestMapping("/score2/insert")
	public String score2Insert(Student s, RedirectAttributes rttr) {

		return "redirect:/instructor/instructor/score2";

	}
   
	@RequestMapping("/score2/delete")
	public String score2Delete(Student s, RedirectAttributes rttr) {

		return "redirect:/instructor/instructor/score2";

	}

	@RequestMapping("/point2/delete")
	public String point2Delete(Exam e, RedirectAttributes rttr) {

		int result = this.examService.delete(e);

		rttr.addFlashAttribute("result", result);

		return "redirect:/instructor/instructor/point2";

	}
}