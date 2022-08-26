package com.school.management.application.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.school.management.application.bean.Student;
import com.school.management.application.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	StudentService studentService;
	HttpServletRequest request;
	HttpServletResponse response;
	
	@GetMapping("/")
	public String welcomePage(Model model) {
		model.addAttribute("message","Welcome to My page");
		return "welcomemenu";
	}
	

	
	@GetMapping("/AddNewStudent")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String destination = "/WEB-INF/view/studentform.jsp";
        RequestDispatcher rd = request.getServletContext().getRequestDispatcher(destination);
        rd.forward(request, response);
    
	}
	
	@PostMapping("/register")
	protected void RegisetStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstname = request.getParameter("fname");
		String lasttname = request.getParameter("lname");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String classenroll = request.getParameter("classenroll");
		
		Student student = new Student();
		
		System.out.println(firstname);
		System.out.println(lasttname);
		System.out.println(email);
		System.out.println(phone);
		
		student.setFirstName(firstname);
		student.setLastName(lasttname);
		student.setEmail(email);
		student.setAddress(address);
		student.setContact(phone);
		student.setGender(gender);
		student.setClassenrolled(classenroll);
		
		System.out.println(student);
		
	try {
		if (student != null) {
			studentService.saveStudent(student);
			List<Student> allStudents = studentService.getAllStudents();
			
			request.setAttribute("students", allStudents);
			String destination = "/WEB-INF/view/showall.jsp";
	        RequestDispatcher rd = request.getServletContext().getRequestDispatcher(destination);
	        rd.forward(request, response);
		}
	} catch (Exception e) {
		System.out.println(e.getMessage());
	}
		

	}
	
	
	
	
	
	@GetMapping("/DiplayAll")
	protected void displayAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Student> allStudents = studentService.getAllStudents();
	
		request.setAttribute("students", allStudents);
		String destination = "/WEB-INF/view/showall.jsp";
        RequestDispatcher rd = request.getServletContext().getRequestDispatcher(destination);
        rd.forward(request, response);
		
//		System.out.println( allStudents);
		
		
	}
	
	@GetMapping("/EditDetails")
	protected void editDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String studId = request.getParameter("id");		
		int studentid = Integer.parseInt(studId);
		Student student1 = studentService.getStudenttById(studentid);
		String genderType = student1.getGender();		
		request.setAttribute("GenderType", genderType);
		request.setAttribute("student", student1);
		String destination = "/WEB-INF/view/editdetails.jsp";
        RequestDispatcher rd = request.getServletContext().getRequestDispatcher(destination);
        rd.forward(request, response);
	
	}
	
	@GetMapping("/updateStudent")
	protected void updateStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String studId = request.getParameter("id");
		String firstname = request.getParameter("fname");
		String lasttname = request.getParameter("lname");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String classenroll = request.getParameter("classenroll");
		
		Student student = new Student();
		
		student.setId(Integer.parseInt(studId));
		student.setFirstName(firstname);
		student.setLastName(lasttname);
		student.setEmail(email);
		student.setAddress(address);
		student.setContact(phone);
		student.setGender(gender);
		student.setClassenrolled(classenroll);
		
		System.out.println(student);

		studentService.updateStudent(student);

		List<Student> allStudents = studentService.getAllStudents();
		
		request.setAttribute("students", allStudents);
		String destination = "/WEB-INF/view/showall.jsp";
        RequestDispatcher rd = request.getServletContext().getRequestDispatcher(destination);
        rd.forward(request, response);
			
	}
	
	
	@GetMapping("/deleteStudent")
	protected void deleteStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		int studId = Integer.parseInt(request.getParameter("id"));
		studentService.deleteStudentById(studId);
		List<Student> allStudents = studentService.getAllStudents();	
		request.setAttribute("students", allStudents);
		String destination = "/WEB-INF/view/showall.jsp";
        RequestDispatcher rd = request.getServletContext().getRequestDispatcher(destination);
        rd.forward(request, response);
		
	}
	

	
}
