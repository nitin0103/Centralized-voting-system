
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.useroperations"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
     <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.16/dist/sweetalert2.all.min.js"></script>
     
     
    <title>Document</title>
    <link rel="stylesheet" href="css/voting.css">
    <style type="text/css">
    
@import url('https://fonts.googleapis.com/css2?family=Heebo:wght@300&display=swap');

*{
    font-family: 'Heebo', sans-serif;
    margin: 0;
    padding: 0;
    /* it is use to remove the padding of nav bar or over all extra padding*/
}
/*hi*/
body{
    /* background-image: url("1.jpg") !important; */
    background-color:cadetblue;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat;
    height: 98vh;
    width:20vw;
    max-width: 100%;
    overflow-x: hidden;
}

.submit{
    border: none;
    border-radius: 30px;
    font-size: 15px;
    height: 53px;
    outline: none;
    width: 400px;
    color: black;
    background: rgba(255,255,255,0.7);
    cursor: pointer;
    transition: .3s ;
    margin-left:0px;
    padding-right:0px;
 
}
.submit:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}
.submit1{
    border: none;
    border-radius: 30px;
    font-size: 15px;
    height: 45px;
    outline: none;
    width: 130px;
    color: black;
    background: rgba(255,255,255,0.7);
    cursor: pointer;
    transition: .3s ;
    padding-right:10px;
    padding-left:0px;
 
}
.submit1:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}
.btncon{

  /* justify-content: space-between; */
 display:flex;

  
}
.btncon1{
padding-right:0px;
margin-right:20px;
width: px;
}
.btncon2{
padding-right:10px;
width: px;
}
table {
      align-items: center;
      margin-right: auto; 
      border-spacing: 10px;
      border-collapse: separate;
      margin-top: 100px;
      width: 50%;
} 
.box2{
    display: flex;
    flex-direction: row;
    width: 100%;
    height: 100%;
    padding-top: 200px;
    padding-left: 60px;
    padding-right: 200px;
    /* justify-content: space-between; */
    /* margin-top: 200px; */
    /* background-color: aliceblue; */
}
    

.containerr{
    padding-top: 38px;
    display: flex;
    /* background-color: pink; */
   
    padding-left: 140px;
    width: 400px;
    height: 400px;

}
.btn1{
    border: none;
    border-radius: 30px;
    font-size: 15px;
    height: 40px;
    outline: none;
    width: 41%;
    color: black;
    background: rgba(255,255,255,0.7);
    cursor: pointer;
    transition: .3s ;
    margin-top: 20px;
}
.btn1:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}
.containerrr {
    /* background-color: yellowgreen; */
    margin-left: 20px;
    padding-left: 40px;
    padding-right: 20px;
    padding-top: 78px;
    padding-bottom: 30px;
    width: 500px;
    height: 400px;
}
th, td {  
    padding: 10px 10px 10px 10px;  
    text-align: center;
    background: rgba(255,255,255,0.10);
    border-spacing: 10px;
    border-collapse: separate;
    width: 20px;
} 
td{
    color: #fff;
    font-size: large;
    width: 100px;
}
th{
    font-size: 25px;
    height: 70px;
   
}
img{
    height: 50%;
    padding-right: 300px;
    margin-right: 0;
    padding-top: 20px;
    padding-left: 20px;
}
h3{
    padding-left: 50px;
    color: #fff;
    font-weight: 500;
}
.info-user{
    background-color: #fff;
}
.containerrr {
    /* background-color: yellowgreen; */
    margin-left: 20px;
    padding-left: 40px;
    padding-right: 20px;
    padding-top: 68px;
    padding-bottom: 30px;
    width: 500px;
    height: 400px;
}
.input-field .input {
    height: 53px;
    width: 90%;
    border: none;
    border-radius: 30px;
    color: #fff;
    margin-top: 0px;
    font-size: 15px;
    padding: 0 0 0 45px;
    
    background: rgba(255,255,255,0.1);
    outline: none;
    margin-bottom:0%;
    padding-bottom: 0%;
}
.h3{
    margin-right: 400px;
    margin-top: 9.2px;
    display: flex;
}
i {
    position: relative;
    top: -33px;
    left: 17px;
    margin-left: 0;
    margin-right: 200px;
    color: #fff;
    margin-right: 20px;
    height: 2px;
    padding-right: 1000px;

    padding-bottom: 0px;
}
.checkbox-inline, .radio-inline {
    position: relative;
    display: inline-block;
    padding-left: 20px;
    margin-bottom: 0;
    font-weight: 400;
    padding-top: 10px;
    vertical-align: middle;
    cursor: pointer;
}
.containerrrr{
    background-color:cadetblue;
 /* background-color: yellowgreen; */
    /* margin-left: 20px; */
    background-color: cadetblue;
    /* background-color: yellowgreen; */
    /* margin-left: 20px; */
    padding-left: -3px;
    padding-right: 51px;
    padding-top: 68px;
    padding-bottom: 30px;
    width: 500px;
    height: 400px;
}
.submit2{
    border: none;
    border-radius: 30px;
    font-size: 15px;
    height: 45px;
    outline: none;
    width: 171px;
    color: black;
    background: rgba(255,255,255,0.7);
    cursor: pointer;
    transition: .3s ;
    margin-left:0px;
    padding-right:0px;
 
}
    </style>

</head>
<body>
   
    <header>
 
        <img class="logo" src="./images/logo.svg" alt="">
 
        <nav>
            <!-- <ul class="nav__links">
                <li><a href="#">Home</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Project</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Music</a></li>
            </ul> -->
            
             <!-- <a href="login.jsp" class="cta" ><button>Admin Login</button></a>
       		 <a href="sign_up.jsp" class="cta" style="margin-left: 50px"><button>user login</button></a>
 -->        
        </nav>
          <%
	String voter_id=(String)session.getAttribute("voter_id");
  	useroperations us=new useroperations();
	ResultSet rs=us.displayData(voter_id);
	
	%>
        <div class="btncon">
        <div class="btncon1">
        <a href="votingpanel.jsp" class="cta"><input type="submit" class="submit2" value="Vote" id=""></a>
              <a href="deleteuser?voter_id=<%=rs.getString(1)%>"><input type="submit" class="submit2" value="log out"></a>
        
        </div>

        

        
           
    </header>
<% 
 if(!session.isNew())
	{
		session=request.getSession();
		String login=(String)session.getAttribute("login-status");

		String value=(String)session.getAttribute("admin_login_status");
		/* System.out.println(value); */
		if(login=="true")
		{
			%>
			<script type="text/javascript">
		
     						Swal.fire({
       						//  position: 'top-end',
        					icon: 'success',
/*         					title:'Oops..!!',
 */        					text: 'user login Successfully',
/*         					showConfirmButton: true,
 */        						
      					})
      					
      					
  
   							</script>	

  			<% 

		}
			session.removeAttribute("login-status");

		if(value=="false")
		{
			%>
			<div class="alert">
            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
             wrong Credentials.
            </div>
  			<% 
		}
		session.removeAttribute("admin_login_status");

	}
%>

<%-- <%

	String voter_id=(String)session.getAttribute("voter_id");
 	System.out.println(voter_id);
 	useroperations us=new useroperations();
	ResultSet rs=us.displayData(voter_id);
	
	%>
 --%>
<form action="">
<div class="box2">
  <div class="containerr" >
  <div>
    <img src="user-removebg-preview.png" alt="" >
      <h3><b><%=rs.getString(2) %></b></h3>
      
      
<%--       <a href="deleteuser?voter_id=<%=rs.getString(1)%>"><input type="submit" value="log out" class="btn1"></a>
 --%>  </div>
    
  </div>
  <div class="containerrr">
   
    <div>
        <div class="input-field">
            <input type="text" value="<%=rs.getString(2) %>" class="input" placeholder="full name" id="" required>
             <i class='bx bx-envelope'></i>
        </div>

        <div class="input-field">
            <input type="email" class="input" value="<%=rs.getString(3) %>"  placeholder="email" id="" required>
            <i class='bx bx-envelope'></i>
        </div>

        <div class="input-field">
            <input type="number" class="input" value="<%=rs.getString(4) %>"  placeholder="Adhar_Card no" id="input-field" required>
            <i class='bx bx-id-card'></i>
        </div>
        
        <div class="input-field">
           <input type="number" class="input" value="<%=rs.getString(9) %>" placeholder="phone no" id="input-field1" required>
          <i class='bx bx-mobile-alt'></i> 
       </div>
      
       
     </div>
   
 </div>
 <div class="containerrrr">
    
    <div>
        <div class="input-field">
        <span class="input" >        
            <label class="radio-inline">
            <input type="radio" name="optradio" value="<%=rs.getString(7) %>" style="padding-left: 200px;">  male<span style="margin-right: 70px;"></span> </label>
          <label class="radio-inline">
            <input type="radio" value="<%=rs.getString(7) %>" name="optradio"> female<span style="margin-right:200px;"></span>
          </label>
          
        </span>
        <i class='bx bx-male-female'></i>
    </div>
  
       
  
       <div class="input-field">
           <input type="date" class="input" value="<%=rs.getString(5) %>" placeholder="conform Password" id="" required>
           <i class='bx bx-calendar'></i>
       </div>
       <div class="input-field">
          <input type="text" class="input" value="<%=rs.getString(10) %>" placeholder="address" id="" required>
          <i class='bx bx-home-alt'></i>
      </div>
      <div class="input-field">
        <input type="button" class="submit" value="sumbit" id="" required>
      
    </div>
       </div>
  
      


 </div>
</div>
</form>
  
	
    <!-- <h1>Welcome to Online Voting System</h1> -->
    
    
     
	

</body>
</html>