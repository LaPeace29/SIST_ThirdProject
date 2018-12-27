package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Instructor;
import com.persistance.InstructorDAO;

@Service("instructorService")
public class InstructorServiceImpl implements InstructorService {

	@Resource(name="instructorDAO")
	private InstructorDAO instructorDAO;
	
	@Override
	public List<Instructor> title() {
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
