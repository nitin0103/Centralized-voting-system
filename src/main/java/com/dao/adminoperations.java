package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.model.CandidateModel1;
import com.model.Finalresult;
import com.model.partymodel;

public class adminoperations {
	int i=0;
	PreparedStatement ps=null;
	ResultSet rs=null;
	Statement st=null;
	public ResultSet displayvoters()
	{
		Connection con= Dbconnection.getConnection();
		
		String query="select * from voter_registration_details";
		
		try {
			ps=con.prepareStatement(query);
			
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
		
	}
	
	public ResultSet displayliveusers()
	{
		Connection con= Dbconnection.getConnection();
		
		String query="select * from loginstatus";
		
		try {
			ps=con.prepareStatement(query);
			
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
		
	}
	
	public int addparty(partymodel pm)
	{
		int i=1;

		ResultSet rs=checkParty(pm);
		try {
			if(rs.next())
			{
				i=2;
			}
			else
			{
				Connection con= Dbconnection.getConnection();
				
				try {
					PreparedStatement ps=con.prepareStatement("insert into parties values(?,?,?,?,?,?,?)");
					ps.setString(1,pm.getParty_id());
					ps.setString(2,pm.getParty_name());
					ps.setString(3,pm.getParty_leader());
					ps.setString(4,pm.getParty_type());
					ps.setString(5,pm.getParty_activemambers());
					ps.setString(6,pm.getParty_estdate());
					ps.setString(7,pm.getParty_headquarter());

					
					 i=ps.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;

	}
	
	public ResultSet checkParty(partymodel pm)
	{

		Connection con= Dbconnection.getConnection();
		
		String query="select * from parties where p_name=? or p_leader=?";
		
		try {
			ps=con.prepareStatement(query);
			ps.setString(1,pm.getParty_name());
			ps.setString(2,pm.getParty_leader());

			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public ResultSet displayParties()
	{
		Connection con= Dbconnection.getConnection();
		
		String query="select * from parties";
		
		try {
			ps=con.prepareStatement(query);
			
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public int deleteParty(String party_id)
	{
		Connection con=Dbconnection.getConnection();
		/*
		 * System.out.println("Inside dlete");
		 */		int i=0;
		try {
			PreparedStatement ps=con.prepareStatement("delete from parties where p_id=?");
			ps.setString(1, party_id);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
		
		
		
		
	}
	public int addcandidate(CandidateModel1 cm12)
	{
		int i=1;

		ResultSet rs=checkCandidate(cm12);
		try {
			if(rs.next())
			{
				i=2;
			
			}
			else
			{
			Connection con= Dbconnection.getConnection();
				
				try {
					PreparedStatement ps=con.prepareStatement("insert into candidates values(?,?,?,?,?,?,?,?)");
					ps.setString(1,cm12.getCandidate_email());
					ps.setString(2,cm12.getCandidate_name());
					ps.setString(3,cm12.getCandidate_aadhar());
					ps.setString(4,cm12.getCandidate_party());
					ps.setString(5,cm12.getCandidate_phone());
					ps.setString(6,cm12.getCandidate_age());
					ps.setString(7,cm12.getCandidate_gender());
					ps.setString(8,cm12.getCandidate_address());
					
					
					 i=ps.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;

	}
	public ResultSet checkCandidate(CandidateModel1 cm12)
	{

		Connection con= Dbconnection.getConnection();
		
		String query="select * from candidates where candidate_name=?";
		
		try {
			ps=con.prepareStatement(query);
			/* ps.setString(1,cm12.getCandidate_email()); */
			ps.setString(1,cm12.getCandidate_name());
		
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	public ResultSet displayCandidates()
	{
		Connection con= Dbconnection.getConnection();
		
		String query="select * from candidates";
		
		try {
			ps=con.prepareStatement(query);
			
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	public int deleteCandidate(String candidate_id)
	{
		Connection con=Dbconnection.getConnection();
		/*
		 * System.out.println("Inside dlete");
		 */		int i=0;
		try {
			PreparedStatement ps=con.prepareStatement("delete from candidates where candidate_id=?");
			ps.setString(1, candidate_id);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
		
		
		
		
	}

	public ResultSet displayPartiesFrompid(String party_id)
	{
		Connection con= Dbconnection.getConnection();
		
		
		try {
			PreparedStatement ps=con.prepareStatement("select * from parties where p_id=?");
			ps.setString(1, party_id);
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	
	public int insertupdatedparty(partymodel pm)
	{
		int i=0;

		ResultSet rs=checkParty(pm);		
		 
		try {
			if(rs.next())
			{
				i=2;
			}
			else
			{
				/*
				 * System.out.println("inside insertupdatedparty");
				 */				Connection con=Dbconnection.getConnection();
				try {
					PreparedStatement ps=con.prepareStatement("update parties set p_id=?,p_name=?,p_leader=?,p_type=?,active_members=?,est_date=?,Head_quarters=? where p_id=?" );
					
					System.out.println(pm.getParty_type());
					System.out.println(pm.getParty_estdate());
					
					ps.setString(1,pm.getParty_id());
					ps.setString(2,pm.getParty_name());
					ps.setString(3,pm.getParty_leader());
					ps.setString(4,pm.getParty_type());
					ps.setString(5,pm.getParty_activemambers());
					ps.setString(6,pm.getParty_estdate());
					ps.setString(7,pm.getParty_headquarter());
					ps.setString(8,pm.getParty_id());
					
					i=ps.executeUpdate();

				}catch (Exception e) {
					// TODO: handle exception
				}
				

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				return i;
	}

	
	
	
	public ResultSet displayCandidatesFrompid(String candidate_id)
	{
		Connection con= Dbconnection.getConnection();
		
		
		try {
			PreparedStatement ps=con.prepareStatement("select * from candidates where candidate_id=?");
			ps.setString(1, candidate_id);
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public int insertupdatedcandidte(CandidateModel1 pm)
	{
			int i=0;
			/*
			 * System.out.println("inside insertupdatcandidate");
			 */				Connection con=Dbconnection.getConnection();
				try {
					PreparedStatement ps=con.prepareStatement("update candidates set candidate_name=?,candidate_Aadhar=?,candidate_party=?,candidate_phone=?,candidate_age=?,candidate_gender=?,candidate_address=? where candidate_id=?" );
					
					System.out.println("inside insertupdatedcandidte");
					System.out.println(pm.getCandidate_party());
					ps.setString(1,pm.getCandidate_name());
					ps.setString(2,pm.getCandidate_aadhar());
					ps.setString(3,pm.getCandidate_party());
					ps.setString(4,pm.getCandidate_phone());
					ps.setString(5,pm.getCandidate_age());
					ps.setString(6,pm.getCandidate_gender());
					ps.setString(7,pm.getCandidate_address());
					ps.setString(8,pm.getCandidate_email());
					
					i=ps.executeUpdate();

				}catch (Exception e) {
					// TODO: handle exception
				}
				return i;
			}
	
	public ResultSet displayVotingdata()
	{
		Connection con=Dbconnection.getConnection();
		String query="select * from votingstatus";
		ResultSet rs=null;
		try {
			Statement stmt=con.createStatement();
			 rs=stmt.executeQuery(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}

	
	public ResultSet votingCount()
	{
		Connection con=Dbconnection.getConnection();
		try {
			String query="select * from votingstatus";
			Statement st=con.createStatement();
			rs=st.executeQuery(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
		 
	public ResultSet votingCountDistinct()
	{
//		int cnt=1;
		Connection con=Dbconnection.getConnection();
		try {
			String query="SELECT politician_party FROM votingstatus WHERE time_date=(SELECT MAX(time_date) FROM votingstatus);";
			Statement st=con.createStatement();
			rs=st.executeQuery(query);
//			cnt=cnt+1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
		 
public ResultSet getVoteCount(String party)
{
	Connection con=Dbconnection.getConnection();
	try {
		PreparedStatement ps=con.prepareStatement("select * from votingstatus where politician_party=?");
		ps.setString(1,party);
		
		rs=ps.executeQuery();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return rs;
}

public ResultSet getCandidateName(String candidate_name)
{
	Connection con=Dbconnection.getConnection();
	try {
		PreparedStatement ps=con.prepareStatement("select candidate_name,candidate_party from candidates where candidate_party=?");
		ps.setString(1,candidate_name);
		
		rs=ps.executeQuery();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return rs;
}


public int insertIntoResult(Finalresult fn)
{

	ResultSet rs=checkDataPresent(fn.getCandidate_name(),fn.getParty_name());
	try {
		if(rs.next())
		{
			System.out.println("Inside Update");
			Connection con=Dbconnection.getConnection();
			System.out.println(fn.getCandidate_name()+"\t"+fn.getParty_name());
			PreparedStatement ps=con.prepareStatement("update finalresult set total_votes=total_votes+1 where candidate_name=? and candidate_party=?");
			ps.setString(1,fn.getCandidate_name());
			ps.setString(2,fn.getParty_name());
			i=ps.executeUpdate();
			
			
		}
		else
		{
			System.out.println("Inside else of insert data");
			Connection con=Dbconnection.getConnection();
			ps=con.prepareStatement("insert into finalresult values(?,?,?)");
			ps.setString(1,fn.getCandidate_name());
			ps.setString(2,fn.getParty_name());
			ps.setInt(3,fn.getVoting_count());
			
			i=ps.executeUpdate();
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return i;
}
public ResultSet checkDataPresent(String cname,String cparty)
{
	ResultSet rs=null;
	System.out.println("Inside checkDataPresent method"+cname+"\t"+cparty);
	Connection con=Dbconnection.getConnection();
	
	try {
		ps=con.prepareStatement("select * from finalresult where candidate_name=? and candidate_party=?");
		ps.setString(1, cname);
		ps.setString(2, cparty);
		
		rs=ps.executeQuery();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return rs;
}














//public int insertIntoResult(Finalresult fn)
//{
//	Connection con=Dbconnection.getConnection();
//
//	ResultSet rs10=null;
//	int i=0;
//	try {
//		rs10=displayFinalResult(fn.getCandidate_name(),fn.getParty_name());
//
//		if(rs10.next())
//		{
//			System.out.println("candidate name"+fn.getCandidate_name()+"\t"+fn.getParty_name());
//			i=incrementVote(fn.getCandidate_name(),fn.getParty_name());
//		}
//		else{
//			
//			try {
//				System.out.println("Inside else");
//				ps=con.prepareStatement("insert into finalresult values(?,?,?)");
//				ps.setString(1,fn.getCandidate_name());
//				ps.setString(2,fn.getParty_name());
//				ps.setInt(3,fn.getVoting_count());
//				
//				i=ps.executeUpdate();
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			
//		}
//	} catch (SQLException e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	}
//	
//	
//	return i;
//}

public ResultSet displayFinalResult(String cname,String cparty)
{	
	/*
	 * System.out.println("Inaisw ra0");
	 */	Connection con=Dbconnection.getConnection();
	ResultSet rs=null;
	
	try {
		ps=con.prepareStatement("select * from finalresult where candidate_name=? and candidate_party=?");
		ps.setString(1,cname);
		ps.setString(2, cparty);
		rs=ps.executeQuery();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return rs;
}

public ResultSet displayFinalResult1()
{
	String query="select * from finalresult order by total_votes desc";
	Connection con=Dbconnection.getConnection();
	
	try {
		st=con.createStatement();
		rs=st.executeQuery(query);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return rs;
}

//public int incrementVote(String cname,String cparty)
//{
//	Connection con=Dbconnection.getConnection();
//	try {
//		
//		/*
//		 * System.out.println("Inside update of candidate");
//		 */		ps=con.prepareStatement("update finalresult set total_votes=total_votes+1 where candidate_name=? and candidate_party=?");
//		ps.setString(1,cname);
//		ps.setString(2, cparty);
//		i=ps.executeUpdate();
//		
//		
//	} catch (SQLException e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	}
//	return i;
//}

public void fetchresult()
{
	int cnt=0;
  	adminoperations aop=new adminoperations();
  	ResultSet rs= aop.votingCountDistinct();
  	try {
  		
  	
  	while(rs.next()) 	//Execute for 3 times
  	{
  		Finalresult fn=null;
  		ResultSet rs3=aop.getCandidateName(rs.getString(1));
  		cnt=0;
  		ResultSet rs2=aop.getVoteCount(rs.getString(1));	//D3
  		
  			while(rs2.next())		//Execute for 2 times
  	  	  	{
  	  	  		cnt++;
  	  	  	}
  	  		if(rs3.next())
  	  		{
  	  	  	System.out.println(rs3.getString(1)+"\t"+rs3.getString(2)+"\t"+cnt);
  	  	  	fn=new Finalresult(rs3.getString(1),rs3.getString(2),cnt);
  	  	 	int i=aop.insertIntoResult(fn);
  	  	 	
  	  	 	fn.setCandidate_name("");
  	  	 	fn.setParty_name("");
  	  	 	
  	  	 	
  	  		}
  	  
  	  	

  		}  	  	
  	}catch (Exception e) {
  		System.out.println(e);	
  		}
  	 

}
}
		
	

