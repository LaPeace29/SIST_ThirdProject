package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Course;

@Repository("courseDAO")
public class CourseDAOImpl implements CourseDAO{

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public int insert(Course cs) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Course> print1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(Course cs) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Course cs) {
		// TODO Auto-generated method stub
		return 0;
	}

}
