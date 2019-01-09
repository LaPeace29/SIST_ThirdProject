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
	public List<Exam> prints1(Exam exam) {
		return this.examDAO.prints1(exam);
	}

	@Override
	public int insert(Exam exam) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Exam exam) {
		
		int result = this.examDAO.delete(exam);
		
		return result;
	}

	@Override
	public List<Exam> printi1(String open_subject_id) {
		
		List<Exam> result = this.examDAO.printi1(open_subject_id);
		
		return result;
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
	public List<Exam> print2(Exam exam) {
		return this.examDAO.print2(exam);
	}
	
	@Override
	public List<Exam> print3(String open_subject_id) {
		
		List<Exam> result = this.examDAO.print3(open_subject_id);
		
		return result;
	}

	@Override
	public List<Exam> print4(Exam e) {

		List<Exam> result = this.examDAO.print4(e);
		
		return result;
	}

	@Override
	public List<Exam> print5() {
		// TODO Auto-generated method stub
		return null;
	}
}
