package com.persistance;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Instructor;
import com.mapper.InstructorIdMapper;
import com.mapper.InstructorManageMapper;
import com.mapper.InstructorMapper13;

@Repository("instructorDAO")
public class InstructorDAOImpl implements InstructorDAO{

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Instructor> title() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Instructor> login() {
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
	public List<Instructor> printi1() {
		
		List<Instructor> result = new ArrayList<Instructor>();
		
		String sql = "SELECT instructor_id, instructor_name, instructor_phone, instructor_regDate\r\n" + 
				"	FROM instructor_tb\r\n" + 
				"    WHERE instructor_id = 'ins001'";
		
		result = this.jdbcTemplate.query(sql, new InstructorMapper13());
		
		return result;
	}

	@Override
	public int insert(Instructor ins) {
		String sql1="INSERT INTO instructor_tb (instructor_id, instructor_name, instructor_phone,instructor_regDate, instructor_pw)\r\n" + 
				"    VALUES ((SELECT CONCAT('INS', LPAD(IFNULL(SUBSTR(MAX(instructor_id), 4), 0) + 1, 3, 0)) \r\n" + 
				"	AS newId FROM instructor_tb i), ?, ?, ?,?)";
		int result1=this.jdbcTemplate.update(sql1, ins.getInstructor_name(), ins.getInstructor_phone(), ins.getInstructor_regDate(), ins.getInstructor_pw());
		
		String sql="SELECT instructor_id FROM instructor_tb ORDER BY instructor_id DESC limit 1";
		List<Instructor> list =this.jdbcTemplate.query(sql, new InstructorIdMapper());
		String temp="";
		for(Instructor i: list) {
			temp= i.getInstructor_id();
		}
		
		String sql2="INSERT INTO instructor_photo_tb (instructor_photo_id, instructor_photo_filePath, instructor_id)\r\n" + 
				"    VALUES ((SELECT CONCAT('INSP', LPAD(IFNULL(SUBSTR(MAX(instructor_photo_id), 5), 0) + 1, 3, 0)) AS newId FROM instructor_photo_tb ip), ?,?)";
		int result2 = this.jdbcTemplate.update(sql2, ins.getInstructor_photo_filepath(), temp);
		if(result1>=1 && result2>=1) {
			return 1;
		}else {
			return 0;
		}
	}

	@Override
	public List<Instructor> print1() {
		String sql="SELECT il.instructor_id, il.instructor_name, il.instructor_phone, il.instructor_regDate,\r\n" + 
				"	instructor_possible, instructor_photo_id, instructor_photo_filePath, count_\r\n" + 
				"from instructor_list1_vw3 il";
		return this.jdbcTemplate.query(sql, new InstructorManageMapper());
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
		String sql="UPDATE instructor_tb SET instructor_pw=? WHERE instructor_id=?";
		return this.jdbcTemplate.update(sql, ins.getInstructor_pw(), ins.getInstructor_id());
	}

	@Override
	public int delete(Instructor ins) {
		String sql="DELETE FROM instructor_tb WHERE instructor_id=?";
		return this.jdbcTemplate.update(sql, ins.getInstructor_id());
	}

	@Override
	public List<Instructor> search(String key, String value) {
		String sql="SELECT il.instructor_id, il.instructor_name, il.instructor_phone, il.instructor_regDate,\r\n" + 
				"	instructor_possible, instructor_photo_id, instructor_photo_filePath, count_\r\n" + 
				"    FROM instructor_list1_vw3 il\r\n";
		if(key.equals("instructor_id")) {
			sql +="WHERE il.instructor_id=?\r\n";
			
		}else if(key.equals("instructor_name")) {
			sql+="WHERE INSTR(instructor_name,?)>0";
			
		}else if(key.equals("instructor_phone")) {
			sql+="WHERE INSTR(instructor_phone,?)>0;";
		}
		
		return this.jdbcTemplate.query(sql, new InstructorManageMapper(), value);
	}
}
