package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Student;



public interface StudentService {
	List<Student> getAllData();
	Student getById(Integer id);

	Student getStudent();

	
	void deleteStudent(Integer id);


	Student addStudent(Student student);

	Student updateStudent(Student student);

}
