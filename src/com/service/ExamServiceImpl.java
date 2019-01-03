package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Exam;
import com.persistance.ExamDAO;

@Service("examService")
public class ExamServiceImpl implements ExamService {

	@Resource(name="examDAO")
	private ExamDAO examDAO;
	
	@Override
	public List<Exam> prints1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Exam exam) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Exam exam) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Exam> printi1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exam> printi2() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exam> print1(Exam exam) {
		return this.examDAO.print1(exam);
	}

	@Override
	public List<Exam> print2() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exam> print3() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exam> print4() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exam> print5() {
		// TODO Auto-generated method stub
		return null;
	}
}
