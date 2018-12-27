package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Course;
import com.persistance.CourseDAO;

@Service("courseService")
public class CourseServiceImpl implements CourseService {

	@Resource(name="courseDAO")
	private CourseDAO courseDAO;
	
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
