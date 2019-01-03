package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.OpenCourse;
import com.persistance.OpenCourseDAO;

@Service("openCourseService")
public class OpenCourseServiceImpl implements OpenCourseService {

	@Resource(name="openCourseDAO")
	private OpenCourseDAO openCourseDAO;
	
	@Override
	public List<OpenCourse> title() {
		return this.openCourseDAO.title();
	}
	
	@Override
	public List<OpenCourse> title(String oc_id) {
		return this.openCourseDAO.title(oc_id);
	}

	@Override
	public List<OpenCourse> homePrint() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OpenCourse> prints1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(OpenCourse oc) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 개설 과정 번호 / 과정명 / 개설 과정 시작일 / 개설 과정 종료일 / 강의실명 / 개설 과목 등록 갯수 / 수강생 등록 인원
	// open_course_id, course_name, open_course_start_date ,open_course_end_date, classroom_name, open_subject_count, student_count
	@Override
	public List<OpenCourse> print1() {
		return this.openCourseDAO.print1();
	}

	@Override
	public List<OpenCourse> print2() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(OpenCourse oc) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(OpenCourse oc) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<OpenCourse> search1(String key, String value) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OpenCourse> search2(String key, String value) {
		// TODO Auto-generated method stub
		return null;
	}
}
