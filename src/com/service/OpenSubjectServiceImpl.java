package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.OpenCourse;
import com.domain.OpenSubject;
import com.persistance.OpenSubjectDAO;

@Service("openSubjectService")
public class OpenSubjectServiceImpl implements OpenSubjectService {

	@Resource(name="openSubjectDAO")
	private OpenSubjectDAO openSubjectDAO;
	
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OpenSubject> print2() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OpenSubject> print3() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OpenSubject> print4() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OpenSubject> print5() {
		// TODO Auto-generated method stub
		return null;
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OpenSubject> search2(String key, String value) {
		// TODO Auto-generated method stub
		return null;
	}
}
