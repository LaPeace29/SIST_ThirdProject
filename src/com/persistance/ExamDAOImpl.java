package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Exam;
import com.mapper.ExamMapper31;

@Repository("examDAO")
public class ExamDAOImpl implements ExamDAO{

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Exam> prints1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Exam exam) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Exam exam) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Exam> printi1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exam> printi2() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exam> print1(Exam exam) {
		
		String sql = "SELECT exam_id, attendance_point, skill_point, subject_point_id, write_point, exam_date, exam_file\r\n" + 
				"      FROM  exam_list1_VW2\r\n" + 
				"      WHERE open_subject_id = ?";
	
		return this.jdbcTemplate.query(sql, new ExamMapper31(), exam.getOpen_subject_id());
	}

	@Override
	public List<Exam> print2() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exam> print3() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exam> print4() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exam> print5() {
		// TODO Auto-generated method stub
		return null;
	}
}
