<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.16/dist/sweetalert2.all.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="dashboard.css">
    <title>Document</title>
    <style type="text/css">
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

.alert {
  padding: 10px;
  background-color: green;
  color: white;
  border-radius: 10px
}
.alert1 {
  padding: 10px;
  background-color: #f44336;
  color: white;
  border-radius: 10px
}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 20px;
  line-height: 10px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}

body{
   /*  background-image: url("1.jpg"); */
    background-color:cadetblue;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat; 
}
/* SIDE BAR CSS */
.header{
    position: fixed;
    width: 0%;
    height: 100vh;
   
    /* background:pink;*/
}
.side-nav{
    width: 250px;
    height: 100%;
    background: rgba(255,255,255,0.10);
    position:fixed;
    top: 0;
    left: 0;
    padding: 20px 30px;

}
.nav-link{
    list-style: none;
    position: relative;
    margin-top: 150px;
    margin-right: 50px;
}
.nav-link li{
    padding: 10px 20px;
    width: 50%;

}
.nav-link li a{
      color: #fff;
    text-decoration: none;
    padding: 10px 40px;
    display: flex;
    align-items: center;
    left: 10px;
    margin-right: 50px;
    border-radius: 30px;
    
}
.nav-link li a i{
    font-size: 22px;
    margin-right: 20px;
}
/* .active{
    
    width: 204px;
    height: 47px;
    position: absolute;
    left: 20;
    top: 2.2%;
    z-index: -1;
    border-radius: 30px;
    background: rgba(255,255,255,0.7);
    left: 10px;
    margin-right: 50px;
    border-radius: 30px;
    margin-left: 10px;

}  */
.nav-link li a:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
    border-radius: 30px;
    color: #093a96;
    background: rgba(255,255,255,0.7);
    transition: 0.100s;
    width: 200px;
}

@media only screen and (max-width:600px) {
    .side-nav{
        width: 110px;
    }
    .nav-link li a p{
        display: none;
    }
    
}
/* table CSS */
th, td {  
    padding: 10px 10px 10px 10px;  
    text-align: center;
    background: rgba(255,255,255,0.10);
    
} 
td{
    color: #fff;
    font-size: large;
}
th{
    font-size: 25px;
    height: 70px;
    color: #093a96;
   
}
table {
    align-items: center;
    margin-right: auto; 
    border-spacing: 10px;
    width: 95%;
}
.box1{
    display: flex;
    align-items: center;
    padding-left: 300px;
    padding-right: 0px;
    padding-top: 40px;
    flex-direction: column;
    
} 
/* heading */
.heading1{
    padding-top: 20%;
    padding-bottom: 10px;
    padding-left: 150px;
    text-align: center;
    font-weight: bold;
    font-size: 40px;
    color: #fff;
}
/* .heading1{
    padding-top: 3%;
    padding-left: 140px;
    text-align: center;
    font-weight: bold;
    font-size: 40px;
    color: #fff;

} */
/* update button */
.btn1{
    border: none;
    border-radius: 30px;
    font-size: 15px;
    height: 40px;
    outline: none;
    width: 100%;
    color: black;
    background: rgba(255,255,255,0.7);
    cursor: pointer;
    transition: .3s ;
}

.btn1:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}

/* save-btn */
.save-btn{
    padding-right: 200px;
    padding-left: 30px;
    padding-top: 35px;
    width: 30%;
}

/* dashboard css */
.box{
    width: 100%;
    display: flex;
    align-items: center;
    padding-left: 500px;
    padding-right: 0px;
    padding-top: 40px;
    flex-direction: row;
}

h1{
    font-size: 70px;
    /* margin:0;
    padding:0; */
    text-align:center;
    font-family:'arial';
    position:absolute;
    color:#fff;
    top:50%;
    left:55%;
    right: 0px;
    color: white;
    transform:translateX(-50%)translateY(-50%);
    color:a #fff;

}

.radio-inline{
}
.box2{
width:40%;
margin: auto;
}
label{
margin-right:15px;
}
.radio-inline1{
  margin-right: 150px;
}
 /* style.css    */
 
@import url('https://fonts.googleapis.com/css2?family=Heebo:wght@300&display=swap');

*{
    font-family: 'Heebo', sans-serif;

    margin: 0;
    padding: 0;
    /* it is use to remove the padding of nav bar or over all extra padding */
}

.nav{
    background: rgba(255,255,255,0.10);
    height:30px; 
    margin: 0px auto;
    height: 50px;
    padding-top: 21px;
    padding-bottom: 0px;
    line-height: 1;
    padding-left: 50px;
    font-size: large;
    font-weight: 400;
    position: fixed;
    width: 100%;
    top: 0;
}
.container{
    width: 350px;
    display: flex;
    flex-direction: column;
    padding: 0 15px 0 15px;
    padding-right: 20px;
    
}
.container1{
    width: 350px;
    display: flex;
    flex-direction: column;
    padding: 0 15px 0 15px;
}
span{
    color: #fff;
    font-size: small;
    display: flex;
    justify-content: center;
    padding: 10px 0 10px 0;
}
header{
    color: #fff;
    font-size: 30px;
    display: flex;
    
    justify-content: center;
    padding: 10px 0 10px 0;
}

.input-field .input{
    height: 45px;
    width: 100%;
    border: none;
    border-radius: 30px;
    color: #fff;
    font-size: 15px;
    padding: 0 0 0 45px;
    background: rgba(255,255,255,0.1);
    outline: none;
}
input[type="date"]::-webkit-inner-spin-button,
input[type="date"]::-webkit-calendar-picker-indicator {
    display: none;
    -webkit-appearance: none;
}
i{
   
}

::-webkit-input-placeholder{
    color: #fff;
}
.submit{
    border: none;
    border-radius: 30px;
    font-size: 15px;
    height: 45px;
    outline: none;
    width: 100%;
    color: black;
    background: rgba(255,255,255,0.7);
    cursor: pointer;
    transition: .3s ;
}
.submit:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}
.btn{
    border: none;
    border-radius: 30px;
    font-size: 15px;
    height: 45px;
    outline: none;
    width: 100%;
    color: black;
    background: rgba(244, 50, 50, 0.7);
    cursor: pointer;
    transition: .3s ;
}
.btn:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}
.btn1{
    border: none;
    border-radius: 30px;
    font-size: 15px;
    height: 40px;
    outline: none;
    width: 70%;
    color: black;
    background: rgba(255,255,255,0.7);
    cursor: pointer;
    transition: .3s ;
}

.btn1:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}

.two-col{
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    color: #fff;
    font-size: small;
    margin-top: 10px;
}
.one{
    display: flex;
}
label a{
    text-decoration: none;
    color: #fff;
}
#toggle-password ,  #toggle-password1,#toggle-password2,#toggle-password4{
    float: right;
}
th, td {  
    padding: 10px 10px 10px 10px;  
    text-align: center;
    background: rgba(255,255,255,0.10);
    
} 
td{
    color: #fff;
    font-size: large;
}
th{
    font-size: 25px;
    height: 70px;
    color: #093a96;
   
}
.box1{
    display: flex;
    align-items: center;
    padding-left: 400px;
    padding-right: 400px;
padding-top: 100px;
    
}  
table {
      
      align-items: center;
      margin-right: auto; 
      border-spacing: 10px;
      width: 200%;
} 
     
#ii{
    position: relative;
    top: -33px;
    left: 17px;
    color: #fff;
    margin-right: 20px;
    height: 2px;
    font-size: 16px;
}
.submit1{
            border: none;
            border-radius: 30px;
            font-size: 15px;
            height: 45px;
            outline: none;
            width: 680px;
            color: black;
            background: rgba(255,255,255,0.7);
            cursor: pointer;
            transition: .3s ;
            
            margin-right:30px;
            
            margin-left:505px ;
            margin-top: 20px; 
        }
        .submit1:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}
label {
    margin-right: 11px;
    margin-top: 1;
    margin-top: 15px;
}
</style>

<meta charset="ISO-8859-1">

<title>Admin | Dashboard</title>

</head>
<body>
    <div class="header">
        <div class="side-nav">
            <h2 style="color: aliceblue;">count : 000</h2>
        </div>
        <ul class="nav-link">
             <li><a href="admindashboard.jsp" target="_self"><i class='bx bx-home-alt'></i><p>Dashboard</p></a></li>
            <li><a href="registration.jsp" target="_self"><i class='bx bx-registered'></i><p>Registrations</p></a></li>
            <li><a href="cnadidate.jsp" target="_self"><i class='bx bx-user-circle'></i></i><p>Candidate</p></a></li>
            <li><a href="live-user.jsp" target="_self"><i class='bx bx-user-check'></i></i><p>Live_users</p></a></li>
            <li><a href="partys.jsp" target="_self"><i class='bx bx-group'></i><p>Party's</p></a></li>
            
            <li><a href="result.jsp"><i class='bx bx-party'></i><p>Result</p></a></li> 
            <div class="active"></div>       
        </ul>
    </div>

    <div class="box">
 
<form action="addcandidate" method="get">    
            <div>
            
            </div>
            <div class="top">
            
         </div>
             
                
                <div class="heading1">candidate sign up</div>

               <%
	if(!session.isNew())
	{
		 String addcandidate_Status="false";
		 session=request.getSession();
		 addcandidate_Status=(String)session.getAttribute("candidate-status");
		 
		 if(addcandidate_Status=="true")
		 {
			 %>
				<div class="alert1">
	            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
	             Candidates Added Successfully.
	            </div>
	            <%

		 }
		 if(addcandidate_Status=="false"){
			 %>
				<div class="alert">
	            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
	             Candidate already registered.
	            </div>
	            <%

		 }
		 
		 session.removeAttribute("candidate-status");

	}
%>
               
               
                
            </div>
        
            <div class="box">
                <!-- <div class="top">
                    <span>Have an account?</span>
                    <header>sign up</header>
                </div> -->
                
             <div class="container">
         
               
               
                 <div>
                <div class="input-field">
                    <input type="text" class="input" placeholder="full name" name="name"  id="" required>
                   <i class='bx bx-user' id="ii"></i>
                </div>
        
               
        
                <div class="input-field">
                    <input type="number" class="input" placeholder="Adhar_Card no" name="Adhar_Card_no" id="input-field" required>
                    <i class='bx bx-id-card' id="ii"></i>
                </div>
        
                
                <div class="input-field">
                   <input type="number" class="input" placeholder="phone no" name="phone_no" id="input-field1" required>
                  <i class='bx bx-mobile-alt' id="ii"></i> 
               </div>
              
               <div class="input-field">
                <span class="input">        
                    <label class="radio-inline">
                    <input type="radio" value="Male" name="optradio">male
                    </label>
                  <label class="radio-inline1" >
                    <input type="radio" value="female" name="optradio">female
                  </label>
                  
                </span>
        
                <i class='bx bx-male-female' id="ii"></i>
                
            </div>
             </div>
        
        
             </div>
             <div class="container" style="padding-top: 0px;">
         
              <div class="input-field">
                    <input type="email" class="input" placeholder="email" name="email" id="" required>
                    <i class='bx bx-envelope' id="ii"></i>
                </div>
              
               <div>
             <!--  <div class="input-field">
                  <input type="text" class="input" placeholder="Username" name="Username" id="">
                  <i class='bx bx-user' ></i>
              </div>
         -->
              <div class="input-field">
                <input type="text" class="input" placeholder="party name" name="Password" id="input-field2" required>
                <i class='bx bx-group' id="ii"></i>
                <i class="fa fa-eye-slash"  id="ii" id="toggle-password2" id="ii"></i>
            </div>
        
              
            <!-- <div class="input-field">
                <input type="Password" class="input" placeholder="enter Password" id="input-field4" required>
                <i class='bx bx-lock-alt'></i>
                <i class="fa fa-eye-slash" id="toggle-password4" onclick="togglePassword4()" id="ii"></i>
            </div> -->
        
             <div class="input-field">
                 <input type="number" placeholder="age" class="input"  name="dob" id="DOB" required>
                
                 <i class='bx bx-calendar' id="ii"></i>
        <!--          <span id = "message" style="color:red"> </span> <br><br>  
        -->  </div>
             <div class="input-field">
                <input type="text" class="input" placeholder="address" name="address" id="" required>
                <i class='bx bx-home-alt' id="ii"></i>
           </div>
           </div>
           </div>
           </div>  
             <div class="input-field1">
             <input type="submit" class="submit1" value="sign up" id="" required>
            </div>
           </form>
    </div>

</body>
</html>