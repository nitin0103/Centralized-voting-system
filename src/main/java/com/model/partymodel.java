package com.model;

public class partymodel {

	private String party_id;
	private String party_name;
	private String party_leader;
	private String party_type;
	private String party_activemambers;
	private String party_estdate;
	private String party_headquarter;
	public partymodel(String party_id, String party_name, String party_leader, String party_type,
			String party_activemambers, String party_estdate, String party_headquarter) {
		super();
		this.party_id = party_id;
		this.party_name = party_name;
		this.party_leader = party_leader;
		this.party_type = party_type;
		this.party_activemambers = party_activemambers;
		this.party_estdate = party_estdate;
		this.party_headquarter = party_headquarter;
	}
	public String getParty_id() {
		return party_id;
	}
	public void setParty_id(String party_id) {
		this.party_id = party_id;
	}
	public String getParty_name() {
		return party_name;
	}
	public void setParty_name(String party_name) {
		this.party_name = party_name;
	}
	public String getParty_leader() {
		return party_leader;
	}
	public void setParty_leader(String party_leader) {
		this.party_leader = party_leader;
	}
	public String getParty_type() {
		return party_type;
	}
	public void setParty_type(String party_type) {
		this.party_type = party_type;
	}
	public String getParty_activemambers() {
		return party_activemambers;
	}
	public void setParty_activemambers(String party_activemambers) {
		this.party_activemambers = party_activemambers;
	}
	public String getParty_estdate() {
		return party_estdate;
	}
	public void setParty_estdate(String party_estdate) {
		this.party_estdate = party_estdate;
	}
	public String getParty_headquarter() {
		return party_headquarter;
	}
	public void setParty_headquarter(String party_headquarter) {
		this.party_headquarter = party_headquarter;
	}

	
}
