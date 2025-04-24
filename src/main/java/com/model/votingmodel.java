package com.model;

public class votingmodel {

	private String voter_id;
	private String voter_name;
	private String politician_name;
	private String party;
	public votingmodel(String voter_id, String voter_name, String politician_name, String party) {
		super();
		this.voter_id = voter_id;
		this.voter_name = voter_name;
		this.politician_name = politician_name;
		this.party = party;
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
	public String getPolitician_name() {
		return politician_name;
	}
	public void setPolitician_name(String politician_name) {
		this.politician_name = politician_name;
	}
	public String getParty() {
		return party;
	}
	public void setParty(String party) {
		this.party = party;
	}
	
	
	
}
