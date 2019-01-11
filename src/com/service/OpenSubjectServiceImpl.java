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
	public List<OpenSubject> instructor_title(OpenSubject os) {

		List<OpenSubject> result = this.openSubjectDAO.instructor_title(os);

		return result;
	}
	
	@Override
	public List<OpenSubject> homePrint() {

		List<OpenSubject> result = this.openSubjectDAO.homePrint();

		return result;
	}

	@Override
	public List<OpenSubject> printi1(OpenSubject os) {
		List<OpenSubject> result = this.openSubjectDAO.printi1(os);

		return result;
	}
	
	@Override
	public List<OpenSubject> printi2(OpenSubject os) {
		List<OpenSubject> result = this.openSubjectDAO.printi2(os);
		
		return result;
	}

	@Override
	public int insert(OpenSubject os) {
		return this.openSubjectDAO.insert(os);
	}
	
	@Override
	public List<OpenSubject> print1() {
		
		return this.openSubjectDAO.print1();
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
	public List<OpenSubject> print3(String oc_id) {
		return this.openSubjectDAO.print3(oc_id);
	}
	
	@Override
	public List<OpenSubject> print3(OpenCourse openCourse) {
		return this.openSubjectDAO.print3(openCourse);
	}

	@Override
	public List<OpenSubject> print4() {
		return this.openSubjectDAO.print4();
	}

	@Override
	public List<OpenSubject> print5() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public OpenSubject print6(OpenCourse opencourse) {
		return this.openSubjectDAO.print6(opencourse);
	}

	@Override
	public int update(OpenSubject os) {
		return this.openSubjectDAO.update(os);
	}

	@Override
	public int delete(OpenSubject os) {
		return this.openSubjectDAO.delete(os);
	}
	
	@Override
	public List<OpenSubject> search1(String key, String value) {
		return this.openSubjectDAO.search1(key, value);
	}

	@Override
	public List<OpenSubject> search2(String key, String value) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<OpenSubject> print1(String instructor_id, String completion) {
		return this.openSubjectDAO.print1(instructor_id, completion);
	}

	@Override
	public int deleteInsert(OpenSubject os) {
		return this.openSubjectDAO.deleteInsert(os);
	}
}
