package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Classroom;
import com.persistance.ClassroomDAO;

@Service("classroomService")
public class ClassroomServiceImpl implements ClassroomService {

	@Resource(name="classroomDAO")
	private ClassroomDAO classroomDAO;
	
	@Override
	public int insert(Classroom cr) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Classroom> print1() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(Classroom cr) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Classroom cr) {
		// TODO Auto-generated method stub
		return 0;
	}

}
