package com.school.management.application.service;

import java.util.List;

import com.school.management.application.bean.Student;

 public abstract class StudentService {

	public abstract List<Student> getAllStudents();
	public abstract Student saveStudent(Student student);
	public abstract Student getStudenttById(int id);
	public abstract void updateStudent(Student stduent);
	public abstract void deleteStudentById(int id);
	
}
