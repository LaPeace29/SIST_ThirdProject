package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.OpenCourse;

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

	@Override
	public List<OpenCourse> print1() {
		// TODO Auto-generated method stub
		return null;
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
