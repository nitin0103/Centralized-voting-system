package com.model;

public class CandidateModel1 {

	private String candidate_email;
	private String candidate_name;
	private String candidate_aadhar;
	private String candidate_party;
	private String candidate_phone;
	private String candidate_age;
	private String candidate_gender;
	private String candidate_address;
	
	public CandidateModel1(String candidate_email, String candidate_name, String candidate_aadhar, String candidate_party, String candidate_phone, String candidate_age, String candidate_gender, String candidate_address) {
		super();
		this.candidate_email = candidate_email;
		this.candidate_name = candidate_name;
		this.candidate_aadhar = candidate_aadhar;
		this.candidate_party = candidate_party;
		this.candidate_phone=candidate_phone;
		this.candidate_age=candidate_age;
		this.candidate_gender=candidate_gender;
		this.candidate_address=candidate_address;
	}

	public String getCandidate_email() {
		return candidate_email;
	}

	public void setCandidate_email(String candidate_email) {
		this.candidate_email = candidate_email;
	}

	public String getCandidate_name() {
		return candidate_name;
	}

	public void setCandidate_name(String candidate_name) {
		this.candidate_name = candidate_name;
	}

	public String getCandidate_aadhar() {
		return candidate_aadhar;
	}

	public void setCandidate_aadhar(String candidate_aadhar) {
		this.candidate_aadhar = candidate_aadhar;
	}

	public String getCandidate_party() {
		return candidate_party;
	}

	public void setCandidate_party(String candidate_party) {
		this.candidate_party = candidate_party;
	}

	public String getCandidate_phone() {
		return candidate_phone;
	}

	public void setCandidate_phone(String candidate_phone) {
		this.candidate_phone = candidate_phone;
	}

	public String getCandidate_age() {
		return candidate_age;
	}

	public void setCandidate_age(String candidate_age) {
		this.candidate_age = candidate_age;
	}

	public String getCandidate_gender() {
		return candidate_gender;
	}

	public void setCandidate_gender(String candidate_gender) {
		this.candidate_gender = candidate_gender;
	}

	public String getCandidate_address() {
		return candidate_address;
	}

	public void setCandidate_address(String candidate_address) {
		this.candidate_address = candidate_address;
	}

}

