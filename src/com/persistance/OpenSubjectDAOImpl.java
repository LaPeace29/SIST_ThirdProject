package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.OpenCourse;
import com.domain.OpenSubject;
import com.mapper.OpenSubjectMapper01;
import com.mapper.OpenSubjectMapper02;
import com.mapper.OpenSubjectMapper31;
import com.mapper.OpenSubjectMapper32;
import com.mapper.OpenSubjectMapper33;
import com.mapper.OpenSubjectMapper51;

@Repository("openSubjectDAO")
public class OpenSubjectDAOImpl implements OpenSubjectDAO{

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<OpenSubject> title() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OpenCourse> homePrint() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OpenSubject> printi1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(OpenSubject os) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<OpenSubject> print1() {
		String sql = "SELECT classroom_name, max_number, student_count, dropout_count, course_name, open_course_start_date, open_course_end_date \r\n" + 
				"	FROM admin_first_vw\r\n" + 
				"	WHERE open_course_start_date < now() AND open_course_end_date > now()\r\n" + 
				"	ORDER BY classroom_name";
		return this.jdbcTemplate.query(sql, new OpenSubjectMapper01());
	}

	@Override
	public List<OpenSubject> print2() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OpenSubject> print3() {
		String sql = "SELECT open_subject_id, subject_name, subject_start_date, subject_end_date\r\n" + 
				"	, instructor_name, subjectbook_name\r\n" + 
				"	FROM open_subject_list2_vw2\r\n" + 
				"    WHERE open_course_id = 'OC0001'\r\n" + 
				"    ORDER BY open_subject_id\r\n";
		
		return this.jdbcTemplate.query(sql, new OpenSubjectMapper51());
	}
	
	@Override
	public List<OpenSubject> print3(String oc_id) {
		String sql = "SELECT open_subject_id, subject_name, subject_start_date, subject_end_date\r\n" + 
				"	, instructor_name, subjectbook_name\r\n" + 
				"	FROM open_subject_list2_vw2\r\n" + 
				"    WHERE open_course_id = ?\r\n" + 
				"    ORDER BY open_subject_id\r\n";
		
		return this.jdbcTemplate.query(sql, new Object[]{oc_id},new OpenSubjectMapper51());
	}

	@Override
	public List<OpenSubject> print3(OpenCourse openCourse) {

		String sql = "SELECT open_subject_id, subject_name, subject_start_date, subject_end_date,  \r\n" + 
				"          instructor_name, subjectbook_name, instructor_id\r\n" + 
				"      FROM open_subject_list1_VW2\r\n" + 
				"      WHERE open_course_id = ?";

		return this.jdbcTemplate.query(sql, new OpenSubjectMapper31(), openCourse.getOpen_course_id());
	}
	
	@Override
	public List<OpenSubject> print4() {

		String sql = "SELECT open_subject_id, subject_name, subject_start_date, subject_end_date, subjectbook_name, \r\n" + 
				"          instructor_name, course_name, open_course_start_date, open_course_end_date,  \r\n" + 
				"          classroom_name, d_count\r\n" + 
				"      FROM open_subject_list2_VW2";
		
		return this.jdbcTemplate.query(sql, new OpenSubjectMapper33());
	}

	@Override
	public List<OpenSubject> print5() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OpenSubject print6(OpenCourse openCourse) {
		String sql = "SELECT course_name, open_course_start_date, open_course_end_date\r\n" + 
				"	FROM open_subject_list7_VW1\r\n"
				+ "      WHERE open_course_id = ?";
		
		return this.jdbcTemplate.queryForObject(sql, new OpenSubjectMapper32(), openCourse.getOpen_course_id());
	}
	
	@Override
	public int update(OpenSubject os) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(OpenSubject os) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<OpenSubject> search1(String key, String value) {

		String sql = "SELECT open_subject_id, subject_name, subject_start_date, subject_end_date, subjectbook_name, \r\n" + 
				"          instructor_name, course_name, open_course_start_date, open_course_end_date,  \r\n" + 
				"          classroom_name, d_count\r\n" + 
				"      FROM open_subject_list2_VW2 ";
		
		if(key.equals("open_subject_id")) {
			sql += " WHERE open_subject_id = ?";
		} else if (key.equals("subject_name")) {
			sql += " WHERE INSTR(subject_name, ?) > 0 ";
		} else if (key.equals("instructor_name")) {
			sql += " WHERE INSTR(instructor_name, ?) > 0 ";
		} else if (key.equals("course_name")) {
			sql += " WHERE INSTR(course_name, ?) > 0 ";
		}
		
		return this.jdbcTemplate.query(sql, new OpenSubjectMapper33(), value);
	}

	@Override
	public List<OpenSubject> search2(String key, String value) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<OpenSubject> print1(String instructor_id, String completion) {
		String sql="SELECT open_subject_id, subject_name, subject_start_date, subject_end_date, course_name, \r\n" + 
				"        open_course_start_date, open_course_end_date, classroom_name,\r\n" + 
				"               CASE\r\n" + 
				"            WHEN now() <subject_start_date THEN '강의 예정'\r\n" + 
				"            WHEN now() >subject_end_date THEN '강의 종료'\r\n" + 
				"            else '강의 중'\r\n" + 
				"        END completion\r\n" + 
				"    FROM open_subject_list3_vw\r\n" + 
				"    WHERE instructor_id=? AND completion=?";
		return this.jdbcTemplate.query(sql, new Object[] {instructor_id,completion}, new OpenSubjectMapper02());
	}
	
	@Override
	public int deleteInsert(OpenSubject os) {
		String sql1="DELETE FROM instructor_possible_tb WHERE instructor_id=?";
		String sql2="INSERT INTO instructor_possible_tb (instructor_id, subject_id) VALUES(?,?)";
		
		int result1 =this.jdbcTemplate.update(sql1, os.getSubject_id());
		int result2= this.jdbcTemplate.update(sql2, os.getInstructor_id(), os.getSubject_id());
		if(result1>=1 && result2>=1) {
			return 1;
		}else {
			return 0;
		}
	}
}
