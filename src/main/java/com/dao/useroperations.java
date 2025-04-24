package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpSession;

import com.model.Voterregistration;
import com.model.votingmodel;

public class useroperations {
	Connection con=null;
	PreparedStatement ps= null;
	ResultSet rs=null;
	ResultSet rs1=null;
	int i=0;
	adminoperations aop=new adminoperations();
	public int voter_registration(Voterregistration vtr)
	{
		con=Dbconnection.getConnection();
		int i=0;
		try {
			ps=con.prepareStatement("insert into voter_registration_details values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,vtr.getVoter_id());
			ps.setString(2,vtr.getVoter_name());
			ps.setString(3,vtr.getEmail());
			ps.setString(4,vtr.getAdharcard());
			ps.setString(5,vtr.getBirthdate());
			ps.setString(6,vtr.getAge());
			ps.setString(7,vtr.getGender());
//			ps.setString(8,vtr.getUsername());
			ps.setString(8,vtr.getPassword());
			ps.setString(9,vtr.getPhoneno());
			ps.setString(10,vtr.getAddress());
			
			i=ps.executeUpdate();
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return i;
		
	}
		public ResultSet checkLoginDetails(String username,String password)
		{
			con=Dbconnection.getConnection();
						
//			System.out.println("Hello metho");
			ResultSet rs=null;
			try {
				ps=con.prepareStatement("select * from voter_Registration_Details where voter_email=? and voter_password=?");
				ps.setString(1,username);
				ps.setString(2,password);

				
				rs=ps.executeQuery();
				
				
				
			}catch (Exception e) {
				System.out.println(e);
			}
			
			return rs;
			
		

	}
		
		public int insert(ResultSet rs,String username) throws SQLException
		{
			
			ResultSet rs1=user_Login_Already(username);

			if(rs1.next())
			{
				i=2;
			}
			else
			{
//				System.out.println("Inside insert");
				
				try {
					ps=con.prepareStatement("insert into loginstatus values(?,?,?,?)");
					ps.setString(1,rs.getString(1));
					ps.setString(2,rs.getString(3));
					ps.setString(3,rs.getString(8));
					ps.setString(4,"1");
//					System.out.println("Heklo");
					i=ps.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			return i;
			
		}
		
		
		public ResultSet displayVoters(String username)
		{
			con=Dbconnection.getConnection();
			try {
				ps=con.prepareStatement("select * from voter_Registration_Details where voter_email=?");
				ps.setString(1,username);
				rs=ps.executeQuery();
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return rs;
		}
		
		public ResultSet user_Login_Already(String username)
		{
			try {
				ps=con.prepareStatement("select * from loginstatus where voter_email=?");
				ps.setString(1,username);
				rs=ps.executeQuery();
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return rs;
		}
	
		public ResultSet displayData(String voter_id)
		{
			
			con=Dbconnection.getConnection();

			/*
			 * System.out.println("inside displayUserData");
			 */			System.out.println(voter_id);
			
			try {
				PreparedStatement ps=con.prepareStatement("select * from voter_Registration_Details where voter_id=?");
				ps.setString(1,voter_id);
				
				rs1=ps.executeQuery();
				
				if(rs1.next())
				{
					/*
					 * System.out.println("data is present");
					 */				}
				else
				{
					/*
					 * System.out.println("No data");
					 */				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			

			return rs1;
			
		}
		
		public ResultSet diaplayCandidateData() {
			con=Dbconnection.getConnection();

//			String query="select * from candidates where candidate_id=?";
			
			try {
				ps=con.prepareStatement("select * from candidates");
				rs=ps.executeQuery();
//				rs=ps.executeQuery(query);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return rs;
		}
		
		public int insertVotingDetails(votingmodel vm)
		{
			int i=0;
			ResultSet rs3=checkVotingGiven(vm);
			try {
				if(rs3.next())
				{
					i=2;
				}
				else
				{
					con=Dbconnection.getConnection();

					try {
						ps=con.prepareStatement("insert into votingstatus values(?,?,?,?,?)");
						ps.setString(1,vm.getVoter_id());
						ps.setString(2,vm.getVoter_name());
						ps.setString(3,vm.getPolitician_name());
						ps.setString(4,vm.getParty());
						ps.setString(5, getDate());
//				System.out.println("Heklo");
						i=ps.executeUpdate();
						
						aop.fetchresult();

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
		
		public ResultSet checkVotingGiven(votingmodel vm)
		{
			con=Dbconnection.getConnection();
			
			try {
				PreparedStatement ps=con.prepareStatement("select * from votingstatus where voter_id=?");
				ps.setString(1,vm.getVoter_id());
				
				rs=ps.executeQuery();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return rs;
		}
		
		public int deleteUser(String voter_id)
		{
			con=Dbconnection.getConnection();
			
			try {
				PreparedStatement ps=con.prepareStatement("delete from loginstatus where voter_id=?");
				ps.setString(1,voter_id);
				
				i=ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return i;
		}
		
		
		public String getDate()
		{
			
			   DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
			   LocalDateTime now = LocalDateTime.now();
			   return dtf.format(now);
		}  
}
