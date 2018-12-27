package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Student;

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
	public List<Student> info() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int changepw(Student s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Student> studentImage() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int prints1() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Student> printi1() {
		// TODO Auto-generated method stub
		return null;
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
