package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.domain.Classroom;
import com.domain.Course;
import com.domain.Instructor;
import com.domain.Subject;
import com.domain.Subjectbook;
import com.service.ClassroomService;
import com.service.CourseService;
import com.service.SubjectService;
import com.service.SubjectbookService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	// 예린
	/*11111111111111111111111111111111111111111111111111*/
	@Resource(name="classroomService")
	private ClassroomService classroomService;
	
	@Resource(name = "courseService")
	private CourseService courseSerivce;
	
	@Resource(name = "subjectService")
	private SubjectService subjectService;
	
	@Resource(name = "subjectbookService")
	private SubjectbookService subjectbookService;

	/** 강의실 관리 */
	// 강의실 목록 출력
	@RequestMapping("/basic/classroom")
	public String classroomList(Model model) {
		model.addAttribute("list", this.classroomService.print1());
		return "admin/admin_basic_classroom";
	}

	// 강의실 수정
	public String classroomUpdate(Classroom cr, RedirectAttributes rttr) {
		return "redirect:/basic/classroom";
	}

	// 강의실 삭제
	public String classroomDelete(Classroom cr, RedirectAttributes rttr) {
		return "redirect:/basic/classroom";
	}

	// 강의실 등록
	public String classroomInsert(Classroom cr, RedirectAttributes rttr) {
		return "redirect:/basic/classroom";
	}

	/** 과정 관리 */
	// 과정 출력
	@RequestMapping("/basic/course")
	public String courseList(Model model) {
		model.addAttribute("list", this.courseSerivce.print1());
		return "admin/admin_basic_course";
	}

	// 과정 수정
	public String courseUpdate(Course cs, RedirectAttributes rttr) {
		return "redirect:/basic/course";
	}

	// 과정 삭제
	public String courseDelete(Course cs, RedirectAttributes rttr) {
		return "redirect:/basic/course";
	}

	// 과정 등록
	public String courseInsert(Course cs, RedirectAttributes rttr) {
		return "redirect:/basic/course";
	}

	/** 과목 관리 */
	// 과목 출력
	@RequestMapping("/basic/subject")
	public String subjectList(Model model) {
		model.addAttribute("list", this.subjectService.print1());
		return "admin/admin_basic_subject";
	}

	// 과목 수정
	public String subjectUpdate(Subject sub, RedirectAttributes rttr) {
		return "redirect:/basic/subject";
	}

	// 과목 삭제
	public String subjectDelete(Subject sub, RedirectAttributes rttr) {
		return "redirect:/basic/subject";
	}

	// 과목 등록
	public String subjectInsert(Subject sub, RedirectAttributes rttr) {
		return "redirect:/basic/subject";
	}

	/** 교재 관리 */
	// 교재 출력
	@RequestMapping("/basic/subjectbook")
	public String subjectbookList(Model model) {
		model.addAttribute("list", this.subjectbookService.print1());
		return "admin/admin_basic_subjectbook";
	}

	// 교재 수정
	public String subjectbookUpdate(Subjectbook sb, RedirectAttributes rttr) {
		return "redirect:/basic/subjectbook";
	}

	// 교재 삭제
	public String subjectbookDelete(Subjectbook sb, RedirectAttributes rttr) {
		return "redirect:/basic/subjectbook";
	}

	// 교재 등록
	public String subjectbookInsert(Subjectbook sb, RedirectAttributes rttr) {
		return "redirect:/basic/subjectbook";
	}

	/** 강사 계정 관리 */
	// 강사 출력
	@RequestMapping("/instrctor/mng1")
	public String instructorList(Model model) {
		return "admin/admin_instructor_mng1";
	}

	// 강사 등록
	public String instructorInsert(Instructor ins, RedirectAttributes rttr) {
		return "redirect:/instructor/mng1";
	}

	// 강사 수정
	public String instructorUpdate(Instructor ins, RedirectAttributes rttr) {
		return "redirect:/instructor/mng1";
	}

	// 강사 삭제
	public String instructorDelete(Instructor ins, RedirectAttributes rttr) {
		return "redirect:/instructor/mng1";
	}

	// 강사 비밀번호 초기화
	public String reset(Instructor ins, RedirectAttributes rttr) {
		return "redirect:/instructor/mng1";
	}

	// 강사 검색
	public String instructorSearch(String key, String value, Model model) {
		return "admin/admin_instructor_mng1";
	}

	// 강의가능과목관리
	public String instructorPossible(Instructor ins, RedirectAttributes rttr) {
		return "redirect:/instructor/mng1";
	}

	/** 강의 과목 관리 */
	// 강사 - 강의 과목 출력
	@RequestMapping("/instrctor/mng2")
	public String openSubjectList(Model model) {
		return "admin/admin_instructor_mng2";
	}

	// 강사 - 강의 과목 검색
	public String openSubjectSearch(String key, String value, Model model) {
		return "admin/admin_instructor_mng2";
	}

	/*--------------------------------------------------*/
	
	// 은미
	/*22222222222222222222222222222222222222222222222222*/
	
	/*--------------------------------------------------*/
	
	// 현아
	/*33333333333333333333333333333333333333333333333333*/
	
	/*--------------------------------------------------*/
}
