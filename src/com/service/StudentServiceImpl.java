package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Student;
import com.persistance.StudentDAO;

@Service("studentService")
public class StudentServiceImpl implements StudentService {

	@Resource(name="studentDAO")
	private StudentDAO studentDAO;
	
	@Override
	public List<Student> title() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Student login(String student_name, String student_pw) {

		return this.studentDAO.login(student_name, student_pw);
	}
	
	@Override
	public List<Student> info() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int changepw(Student s) {
		return this.studentDAO.changepw(s);
	}

	@Override
	public List<Student> studentImage() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Student> prints1() {
		return this.studentDAO.prints1();
	}

	@Override
	public List<Student> printi1(String open_subject_id) {
		
		List<Student> result = this.studentDAO.printi1(open_subject_id);
		
		return result;
	}

	@Override
	public int insert(Student s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertCourse(Student s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertDrop(Student s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Student s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int reset(Student s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Student s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Student> search(String key, String value) {
		// TODO Auto-generated method stub
		return null;
	}
}
