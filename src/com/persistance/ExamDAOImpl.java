package com.persistance;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Exam;
import com.domain.OpenSubject;
import com.mapper.ExamMapper17;
import com.mapper.ExamMapper18;
import com.mapper.ExamMapper19;
import com.mapper.ExamMapper21;
import com.mapper.ExamMapper31;
import com.mapper.ExamMapper32;
import com.mapper.ExamMapper52;
import com.mapper.ExamMapper53;

@Repository("examDAO")
public class ExamDAOImpl implements ExamDAO{

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Exam> prints1(Exam exam) {
		String sql = "SELECT subject_name, subjectbook_name, instructor_name, exam_date\r\n" + 
				"		,attendance_score, attendance_point, write_score, write_point, skill_score, skill_point, \r\n" + 
				"		exam_file, subjectbook_isbn, instructor_photo_filepath, subject_start_date, subject_end_date \r\n" + 
				"FROM student_transcript_vw4\r\n" + 
				"WHERE student_id = ? \r\n" + 
				"AND open_course_id = ? ;";
	
		return this.jdbcTemplate.query(sql, new ExamMapper21(),"ST00077" ,exam.getOpen_course_id());
	}

	@Override
	public int insert(Exam exam) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Exam exam) {
		
		String sql = "DELETE FROM exam_tb\r\n" + 
				"	WHERE exam_id = ? ";
		
		int result = this.jdbcTemplate.update(sql, exam.getExam_id());
		
		return result;
	}

	@Override
	public List<Exam> printi1(OpenSubject os) {
		
		List<Exam> result = new ArrayList<Exam>();

		String sql = "SELECT exam_id, attendance_point, write_point, skill_point, exam_date, exam_file, open_subject_id, count_, \r\n" + 
				"        CASE WHEN count_  <= 0 THEN '성적 입력 전'\r\n" + 
				"		else '성적 입력 완료'\r\n" + 
				"        END score_state\r\n" + 
				"    FROM exam_list3_vw3\r\n" + 
				"    WHERE open_subject_id = ? AND instructor_id = ?";
		
		result = this.jdbcTemplate.query(sql, new ExamMapper18(), os.getOpen_subject_id(), os.getInstructor_id() );
		
		return result;
	}

	@Override
	public List<Exam> printi2() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Exam> print1(Exam exam) {
		
		String sql = "SELECT exam_id, attendance_point, skill_point, subject_point_id, write_point, exam_date, exam_file\r\n" + 
				"      FROM  exam_list1_VW2\r\n" + 
				"      WHERE open_subject_id = ?";
	
		return this.jdbcTemplate.query(sql, new ExamMapper31(), exam.getOpen_subject_id());
	}

	@Override
	public List<Exam> print2() {

		String sql = "SELECT student_id, student_name, student_phone, student_regdate, count_\r\n" + 
				"FROM student_list2_vw";
	
		return this.jdbcTemplate.query(sql, new ExamMapper32());
	}

	@Override
	public List<Exam> print2(Exam exam) {

		String sql = "SELECT student_id, student_name, student_phone, student_regdate, count_\r\n"
				+ "FROM student_list2_vw" + " WHERE student_id = ?";

		return this.jdbcTemplate.query(sql, new ExamMapper32(), exam.getStudent_id());
	}


	@Override
	public List<Exam> print3(OpenSubject os) {
		
		System.out.println(os.getOpen_subject_id());
		System.out.println(os.getInstructor_id());
		
		List<Exam> result = new ArrayList<Exam>();
		
		String sql = "SELECT exam_id,  attendance_point, write_point, skill_point , exam_date, exam_file, (SELECT COUNT(*) FROM exam_tb WHERE exam_id = v2.exam_id)count_\r\n" + 
				"      FROM  exam_list1_VW2 v2\r\n" + 
				"      WHERE open_subject_id = ? AND instructor_id = ?";
		
		result = this.jdbcTemplate.query(sql, new ExamMapper17(), os.getOpen_subject_id(), os.getInstructor_id());
		
		return result;
	}

	@Override
	public List<Exam> print4(Exam e) {

		List<Exam> result = new ArrayList<Exam>();
		
		String sql = "SELECT \r\n" + 
				"    student_id, student_name, student_phone, student_regDate, completion,\r\n" + 
				"    CASE completion\r\n" + 
				"        WHEN '중도탈락' THEN drop_date\r\n" + 
				"        ELSE open_course_end_date\r\n" + 
				"    END completion_date, attendance_score, write_score, skill_score, total as total_score\r\n" + 
				"FROM\r\n" + 
				"    student_list3_vw2\r\n" + 
				"WHERE\r\n" + 
				"    exam_id = ? \r\n" + 
				"    AND open_subject_id= ? ";
		
		result = this.jdbcTemplate.query(sql, new ExamMapper19(), e.getExam_id(), e.getOpen_subject_id());
		
		return result;
	}

	@Override
	public List<Exam> print4_1(Exam exam) {
		
		String sql = "SELECT student_id, student_name, student_phone, attendance_score, write_score, skill_score, score\r\n" + 
				"	FROM student_list1_vw1\r\n" + 
				"    WHERE exam_id = ?\r\n" + 
				"    ORDER BY student_id";
		
		return this.jdbcTemplate.query(sql, new ExamMapper52(), exam.getExam_id());
	}
	@Override
	public List<Exam> print5() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<Exam> print5(Exam exam) {
		System.out.println(exam.getOpen_subject_id());
		System.out.println(exam.getStudent_id());
		String sql = "SELECT exam_id, attendance_score, attendance_point,\r\n" + 
				"		write_score, write_point, skill_score, skill_point\r\n" + 
				"        , score\r\n" + 
				"        , exam_date, exam_file\r\n" + 
				"        FROM student_transcript_vw5\r\n" + 
				"        WHERE open_subject_id = ?\r\n" + 
				"        AND student_id = ?";
		
		return this.jdbcTemplate.query(sql, new ExamMapper53(), exam.getOpen_subject_id(), exam.getStudent_id());
	}
}
