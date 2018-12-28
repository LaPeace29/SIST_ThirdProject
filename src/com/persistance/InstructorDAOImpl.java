package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Instructor;

@Repository("instructorDAO")
public class InstructorDAOImpl implements InstructorDAO{

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Instructor> title() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Instructor> login() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<Instructor> info() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int changepw(Instructor ins) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Instructor> InstructorImage() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int printi1() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Instructor ins) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Instructor> print1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int subjectManage() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Instructor ins) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int reset(Instructor ins) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Instructor ins) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Instructor> search(String key, String value) {
		// TODO Auto-generated method stub
		return null;
	}
}
