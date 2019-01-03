package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.OpenCourse;
import com.mapper.OpenCourseMapper51;
import com.mapper.OpenCourseMapper53;

@Repository("openCourseDAO")
public class OpenCourseDAOImpl implements OpenCourseDAO{

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<OpenCourse> title() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<OpenCourse> title(String oc_id) {
		String sql = "SELECT course_name, open_course_start_date, open_course_end_date \r\n" + 
				"	FROM open_course_list1_vw\r\n" + 
				"    WHERE open_course_id = ?";
		return this.jdbcTemplate.query(sql, new Object[]{oc_id}, new OpenCourseMapper53());
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
		String sql = "SELECT open_course_id, course_name, open_course_start_date, open_course_end_date \r\n" + 
				"	, classroom_name, os_count, d_count\r\n" + 
				"    FROM open_course_list1_vw\r\n" + 
				"    ORDER BY open_course_id";
		
		return this.jdbcTemplate.query(sql, new OpenCourseMapper51());
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
