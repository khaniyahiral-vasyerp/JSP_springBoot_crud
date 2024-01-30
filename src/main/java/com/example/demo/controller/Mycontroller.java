package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dto.IdDto;
import com.example.demo.model.Student;
import com.example.demo.repository.StudentRepository;
import com.example.demo.service.StudentService;

@Controller
@RequestMapping(path = "/student")

public class Mycontroller {
	@Autowired
	private StudentService studentService;

	/*@GetMapping("/all")
	public ModelAndView index() {
		ModelAndView modelAndView = new ModelAndView("index");
		// modelAndView.setViewName("index");
//		modelAndView.addObject("name", "Hiral Khaniya");
//		modelAndView.addObject("id", "11");
//		modelAndView.addObject("roll", "22222");
//		modelAndView.addObject("email", "testing");
//		modelAndView.addObject("phoneno","9904114483");
//		modelAndView.addObject("state","Gujarat");
//		modelAndView.addObject("city","jamnagr");
//		modelAndView.addObject("department","computer");
		// modelAndView.addObject("college_name","VGEc");
//		System.err.println(studentService.getAllData());
		modelAndView.addObject("students", studentService.getAllData());
		return modelAndView;
	}*/

	/*
	 * @GetMapping("/get") public ModelAndView getById(IdDto iddto) { ModelAndView
	 * m=new ModelAndView("profile");
	 * m.addObject("students",StudentService.getById(iddto.id())); return null;
	 * 
	 * }
	 */
	/*
	 * @GetMapping("/student/add") public String newProductForm(Model model) {
	 * model.addAttribute("student", new Student()); return "add"; }
	 * 
	 * @PostMapping("/save") public String saveProduct(@ModelAttribute Student
	 * student) { StudentRepository.save(student); return "redirect:/"; }
	 */
	@GetMapping("/all")
	public ModelAndView getAll() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("students", studentService.getAllData());
		return mv;
	}

	@GetMapping("/get")
	public ModelAndView getById(IdDto idDto) {
		ModelAndView mv = new ModelAndView("profile");
		mv.addObject("student", studentService.getById(idDto.id()));
		return mv;
	}

	@PostMapping("/delete")
	public String deleteStudent(IdDto idDto) {
		studentService.deleteStudent(idDto.id());
		return "redirect:/student/all";
	}

	@PostMapping("/addForm")
	public ModelAndView addStudentForm() {
		return new ModelAndView("add");
	}

	@PostMapping("/add")
	public String addStudent(Student student) {
		studentService.addStudent(student);
		return "redirect:/student/all";

	}

	@PostMapping("/updateForm")
	public ModelAndView updateStudentForm(IdDto idDto) {
		ModelAndView mv = new ModelAndView("update");
		mv.addObject("student", studentService.getById(idDto.id()));
		return mv;
	}

	@PostMapping("/update")
	public String updateStudent(Student student) {
		studentService.updateStudent(student);
		return "redirect:/student/all";
	}

}
