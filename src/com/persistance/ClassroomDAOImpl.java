package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Classroom;

@Repository("classroomDAO")
public class ClassroomDAOImpl implements ClassroomDAO{

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
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
