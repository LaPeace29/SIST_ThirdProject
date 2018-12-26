package com.persistance;

import java.util.List;

import com.domain.Exam;

public interface ExamDAO {

	// 시험 출력 메소드(1)
	// 시험번호 / 출결배점 / 필기배점 / 실기배점 / 시험날짜 / 시험문제파일
	public List<Exam> prints1();
	
	// 시험 출력 메소드(2)
	// 수강생번호 / 수강생이름 / 수강생휴대폰번호 / 출결점수 / 필기점수 / 실기점수 / 총점
	public List<Exam> prints2();
	
	// 시험 출력 메소드(3)
	// 수강생번호 / 수강생이름 / 수강생휴대폰번호 / 수강생등록일 / 수강횟수
	public List<Exam> prints3();
	
	// 시험 출력 메소드(4)
	// 시험번호 / 출결점수 / 출결배점 / 필기점수 / 필기배점 / 실기점수 / 실기배점 / 총점 / 시험날짜 / 시험문제파일
	public List<Exam> prints4();
}
