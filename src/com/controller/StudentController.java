package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.domain.Student;
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

   //첫 페이지
   @RequestMapping("/first")
   public String student_first(Model model) {

      return "/student/student_first";
   }

   //수강생 정보
   @RequestMapping("/info")
   public String student_info(Model model) {

      return "/student/student_info";
   }
   //성적 조회
   @RequestMapping("/score1")
   public String student_score1(Model model) {

      return "/student/student_score1";
   }
   // 성적 조회 / 수강생 성적 조회
   @RequestMapping("/score2")
   public String student_score2(Model model) {

      return "/student/student_score2";
   }
   
   //비밀번호 변경
   @RequestMapping("/changepw")
   public String student_changepw(Student s, RedirectAttributes rttr) {
 
      
      return "redirect:/student/student_changepw";
   }
   
   

}