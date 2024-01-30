package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Student;
import com.example.demo.repository.StudentRepository;

@Service
public class StudentServiceimpl implements StudentService {

	@Autowired
	StudentRepository studentRepository;

	@Override
	public List<Student> getAllData() {

		return studentRepository.findAll();
	}

	
	@Override
	public Student getStudent() {
		Student student1 = new Student();
		student1.setId(2);
		student1.setName("hy");
		student1.setEmail("testing2@gmail.com");
		return student1;
	}

	@Override
	public Student getById(Integer id) {
		// TODO Auto-generated method stub
		return studentRepository.findById(id).get();
	}

	@Override
	public void deleteStudent(Integer id) {
		// TODO Auto-generated method stub
		studentRepository.deleteById(id);
	}

	
	@Override
	public Student addStudent(Student student) {
		// TODO Auto-generated method stub
		return studentRepository.save(student);
	}

	@Override
	public Student updateStudent(Student student) {
		// TODO Auto-generated method stub
		Integer id = student.getId();
		Student newStd = studentRepository.findById(id)
				.orElseThrow(() -> new RuntimeException("User with id doesn't exist"));

		if (student.getName() != null && !student.getName().isEmpty()) {
			newStd.setName(student.getName());
		}
		
		if (student.getEmail() != null && !student.getEmail().isEmpty()) {
			newStd.setEmail(student.getEmail());
		}
		if(student.getDepartment()!=null && !student.getDepartment().isEmpty())
		{
			newStd.setDepartment(student.getDepartment());
		}
		if(student.getCity()!=null && !student.getCity().isEmpty())
		{
			newStd.setCity(student.getCity());
		}
		if(student.getState()!=null && !student.getState().isEmpty())
		{
			newStd.setState(student.getState());		}
		if(student.getPhoneno()!=null && !student.getPhoneno().isEmpty())
		{
			newStd.setPhoneno(student.getPhoneno());
		}
		
		
		studentRepository.save(newStd);
		
		return newStd;
		
		
		
	}

	
	
}
