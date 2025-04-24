package com.model;

public class Finalresult {
	
	private String candidate_name;
	private String party_name;
	private int voting_count;
	public Finalresult(String candidate_name, String party_name, int voting_count) {
		super();
		this.candidate_name = candidate_name;
		this.party_name = party_name;
		this.voting_count = voting_count;
	}
	public String getCandidate_name() {
		return candidate_name;
	}
	public void setCandidate_name(String candidate_name) {
		this.candidate_name = candidate_name;
	}
	public String getParty_name() {
		return party_name;
	}
	public void setParty_name(String party_name) {
		this.party_name = party_name;
	}
	public int getVoting_count() {
		return voting_count;
	}
	public void setVoting_count(int voting_count) {
		this.voting_count = voting_count;
	}
	
}
