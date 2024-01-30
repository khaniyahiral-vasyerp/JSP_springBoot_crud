package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Student {
	public Student(int id, String name, String email, String city, String state, String department, String college_name,
			String phoneno) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.city = city;
		this.state = state;
		this.department = department;
		this.college_name = college_name;
		this.phoneno = phoneno;
	}

	public Student() {
	}

	@Id
	@javax.persistence.GeneratedValue(strategy = GenerationType.AUTO)

	private int id;
	private String name;
	private String email;
	private String city;
	private String state;
	private String department;
	private String college_name;
	private String phoneno;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}

	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}

	/**
	 * @return the department
	 */
	public String getDepartment() {
		return department;
	}

	/**
	 * @param department the department to set
	 */
	public void setDepartment(String department) {
		this.department = department;
	}

	/**
	 * @return the college_name
	 */
	public String getCollege_name() {
		return college_name;
	}

	/**
	 * @param college_name the college_name to set
	 */
	public void setCollege_name(String college_name) {
		this.college_name = college_name;
	}

	/**
	 * @return the phoneno
	 */
	public String getPhoneno() {
		return phoneno;
	}

	/**
	 * @param phoneno the phoneno to set
	 */
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", email=" + email + ", city=" + city + ", state=" + state
				+ ", department=" + department + ", college_name=" + college_name + ", phoneno=" + phoneno + "]";
	}

}
