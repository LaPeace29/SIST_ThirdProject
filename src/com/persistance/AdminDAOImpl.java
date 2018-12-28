package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Admin;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Admin> login() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<Admin> info() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int changepw(Admin admin) {
		// TODO Auto-generated method stub
		return 0;
	}
}
