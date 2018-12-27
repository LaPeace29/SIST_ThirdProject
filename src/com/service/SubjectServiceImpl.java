package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Subject;
import com.persistance.SubjectDAO;

@Service("subjectService")
public class SubjectServiceImpl implements SubjectService {

	@Resource(name="subjectDAO")
	private SubjectDAO subjectDAO;
	
	@Override
	public int insert(Subject sub) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Subject> print1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(Subject sub) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Subject sub) {
		// TODO Auto-generated method stub
		return 0;
	}
}
