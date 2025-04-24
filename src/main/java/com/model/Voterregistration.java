package com.model;

public class Voterregistration {
	
	private String voter_id;
	private String voter_name;
	private String email;
	private String adharcard;
	private String birthdate;
	private String age;
	private String gender;
//	private String username;
	private String password;
	private String phoneno;
	private String address;
	public Voterregistration(String voter_id, String voter_name, String email, String adharcard, String birthdate,
			String age, String gender, String password, String phoneno, String address) {
		super();
		this.voter_id = voter_id;
		this.voter_name = voter_name;
		this.email = email;
		this.adharcard = adharcard;
		this.birthdate = birthdate;
		this.age = age;
		this.gender = gender;
		this.password = password;
		this.phoneno = phoneno;
		this.address = address;
	}
	public String getVoter_id() {
		return voter_id;
	}
	public void setVoter_id(String voter_id) {
		this.voter_id = voter_id;
	}
	public String getVoter_name() {
		return voter_name;
	}
	public void setVoter_name(String voter_name) {
		this.voter_name = voter_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAdharcard() {
		return adharcard;
	}
	public void setAdharcard(String adharcard) {
		this.adharcard = adharcard;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
