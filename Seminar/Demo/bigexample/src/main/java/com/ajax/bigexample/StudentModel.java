package com.ajax.bigexample;

public class StudentModel {

	private long sttudentId;

	private String firstName;

	private String lastName;

	private String address;

	private String gender;

	private String grade;

	public long getSttudentId() {
		return sttudentId;
	}

	public void setSttudentId(long sttudentId) {
		this.sttudentId = sttudentId;
	}

	public String getFirstName() {

		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

}