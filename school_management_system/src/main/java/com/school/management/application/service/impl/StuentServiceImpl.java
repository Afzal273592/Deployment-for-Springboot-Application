package com.school.management.application.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.management.application.bean.Student;
import com.school.management.application.repository.StudentRepository;
import com.school.management.application.service.StudentService;

@Service
public class StuentServiceImpl extends StudentService {

	@Autowired
	StudentRepository studentRepository;

	
	public StudentRepository getStudentRepository() {
		return studentRepository;
	}

	public void setStudentRepository(StudentRepository studentRepository) {
		this.studentRepository = studentRepository;
	}

	@Override
	public List<Student> getAllStudents() {	
		return  this.studentRepository.findAll();
	}

	@Override
	public Student saveStudent(Student student) {
		// TODO Auto-generated method stub
		return this.studentRepository.save(student);
	}

	@Override
	public Student getStudenttById(int id) {
		
		Optional<Student> studeOptional = this.studentRepository.findById(id);
		
		if (studeOptional != null) {
			
			return studeOptional.get();
		}
			return null;
	}

	
	@Override
	public void updateStudent(Student stduent) {
		
		Student studentNew = new Student();
		studentNew.setId(stduent.getId());
		studentNew.setFirstName(stduent.getFirstName());
		studentNew.setLastName(stduent.getLastName());
		studentNew.setEmail(stduent.getEmail());
		studentNew.setAddress(stduent.getAddress());
		studentNew.setContact(stduent.getContact());
		studentNew.setGender(stduent.getGender());
		studentNew.setClassenrolled(stduent.getClassenrolled());
		
		this.studentRepository.save(studentNew);	
		
	}

	@Override
	public void deleteStudentById(int id) {
		Student student = this.getStudenttById(id);
		this.studentRepository.delete(student);
		
	}

}
