package com.persistance;

import java.util.List;

import com.domain.OpenCourse;

public interface OpenCourseDAO {

	// 개설 과정 출력 메소드(1)
	// 개설 과정번호 / 과정명 / 개설 과정 기간 / 강의실명 / 개설 과목 등록 갯수 / 수강생 등록 인원
	public List<OpenCourse> prints1();
	
	// 개설 과정 출력 메소드(2)
	// 개설 과정번호 / 과정명 / 개설 과정 기간 / 강의실명 / 개설 과목 등록 갯수
	public List<OpenCourse> prints2();
	
	// 개설 과정 검색 메소드
	public List<OpenCourse> search(String key, String value);
	
	
}
