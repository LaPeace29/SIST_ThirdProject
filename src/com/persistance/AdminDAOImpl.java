package com.persistance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Admin;
import com.mapper.AdminMapper01;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public Admin login(String admin_name, String admin_pw) {

		String sql = "SELECT admin_id, admin_name, admin_phone, admin_regDate \r\n" + 
				"	FROM admin_tb\r\n" + 
				"    WHERE admin_name=? AND admin_pw=?";
		
		return this.jdbcTemplate.queryForObject(sql, new AdminMapper01(), admin_name, admin_pw);
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
