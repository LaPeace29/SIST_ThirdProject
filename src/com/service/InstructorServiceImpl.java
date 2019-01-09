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
	public Instructor login(String instructor_name, String instructor_pw) {
		return this.instructorDAO.login(instructor_name, instructor_pw);
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
	public List<Instructor> printi1() {
		List<Instructor> result = this.instructorDAO.printi1();
		
		return result;
	}

	@Override
	public int insert(Instructor ins) {
		return this.instructorDAO.insert(ins);
	}

	@Override
	public List<Instructor> print1() {
		return this.instructorDAO.print1();
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
		return this.instructorDAO.reset(ins);
	}

	@Override
	public int delete(Instructor ins) {
		return this.instructorDAO.delete(ins);
	}

	@Override
	public List<Instructor> search(String key, String value) {
		return this.instructorDAO.search(key, value);
	}
}
