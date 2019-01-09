package com.persistance;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Student;
import com.mapper.StudentMapper01;
import com.mapper.StudentMapper16;
import com.mapper.StudentMapper21;

@Repository("studentDAO")
public class StudentDAOImpl implements StudentDAO{

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Student> title() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Student login(String student_name, String student_pw) {

		String sql = "SELECT student_id, student_name, student_phone, student_regDate\r\n" + 
				"	FROM student_tb\r\n" + 
				"    WHERE student_name=? AND student_pw=?";
		
		try {
			
			return this.jdbcTemplate.queryForObject(sql, new StudentMapper01(), student_name, student_pw);
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
	
	@Override
	public List<Student> info() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int changepw(Student s) {
		String sql="UPDATE student_tb SET student_pw=? WHERE student_pw= ? AND student_id = ?";
		return this.jdbcTemplate.update(sql, s.getStudent_new_pw2(), s.getStudent_pw(), "ST00001");
	}

	@Override
	public List<Student> studentImage() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Student> prints1() {
		String sql = "SELECT student_id, student_name, student_phone, student_regdate  \r\n"
				+ "FROM student_list2_vw\r\n" + "WHERE student_id = ? ";

		return this.jdbcTemplate.query(sql, new StudentMapper21(), "ST00001");
	}

	@Override
	public List<Student> printi1(String open_subject_id) {

		List<Student> result = new ArrayList<Student>();
		
		String sql = "SELECT student_id, student_name, student_phone, student_regdate, completion, completion_date \r\n" + 
				"FROM student_list3_vw3\r\n" + 
				" WHERE instructor_id = 'ins001'\r\n" + 
				"AND open_subject_id = ? ";
		
		result = this.jdbcTemplate.query(sql, new StudentMapper16(),open_subject_id);
		
		return result;
	}

	@Override
	public int insert(Student s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertCourse(Student s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertDrop(Student s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Student s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int reset(Student s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Student s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Student> search(String key, String value) {
		// TODO Auto-generated method stub
		return null;
	}

}
