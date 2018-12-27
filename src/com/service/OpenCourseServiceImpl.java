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
