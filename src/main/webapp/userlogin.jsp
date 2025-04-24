<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <!-- <link rel="stylesheet" href="css/style.css"> -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.16/dist/sweetalert2.all.min.js"></script>
    
    <style type="text/css">
    
@import url('https://fonts.googleapis.com/css2?family=Heebo:wght@300&display=swap');

*{
    font-family: 'Heebo', sans-serif;

    margin: 0;
    padding: 0;
    /* it is use to remove the padding of nav bar or over all extra padding*/
}
.fa {
    font-weight: 900;
    padding-right: 10px;
}
body{
  /*   background-image: url("1.jpg") !important; */
   background-color:cadetblue;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat;
    
}

.alert {
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
.box{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 90vh;
}
.container{
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
    margin-top:20px;
    padding: 0 0 0 47px;
    background: rgba(255,255,255,0.1);
    outline: none;
}
input[type="date"]::-webkit-inner-spin-button,
input[type="date"]::-webkit-calendar-picker-indicator {
    display: none;
    -webkit-appearance: none;
}
i{
    position: relative;
    top: -33px;
    left: 17px;
    color: #fff;
    margin-right: 20px;
    height: 2px;
    font-size: 16px;
}
#ii{
    font-size: 5px;
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
    margin-top: 20px;
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
#toggle-password ,  #toggle-password1,#toggle-password2{
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
   
}
.box1{
    display: flex;
    align-items: center;
    padding-left: 400px;
    padding-top: 50px;
}  
table {
      align-items: center;
      margin-right: auto; 
      border-spacing: 10px;
      width: 200%;
} 
 li{
    display: block;
    display:inline;
    color: white;
    padding: 14px 12px;
    text-decoration: none;
  }

 .con{
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
}
    </style>
    <title>Login</title>

</head>
<body>
   <div class="box">
    <div class="container">
        <form action="controller" method="post">
             <% 
   if(!session.isNew())
	{
		session=request.getSession();
/* 		String admin_login=(String)session.getAttribute("username");
 */		String login_value=(String)session.getAttribute("already-login-status");
		String value=(String)session.getAttribute("login-status");
		String deletevalue=(String)session.getAttribute("delete-success");

		/* System.out.println(value); */
		
		
		if(login_value=="true")
		{
			%>
			<div class="alert">
            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
             user is already login.....please logout from previous session..!!.
            </div>
  			<% 
  			session.removeAttribute("already-login-status");

		}
		
		if(value=="false")
		{
			%>
			<div class="alert">
            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
             Invalid Credentials.
            </div>
  			<% 
  			session.removeAttribute("login-status");

		}
		
		if(deletevalue=="true")
		{
			%>
			<script type="text/javascript">
		
     						Swal.fire({
       						//  position: 'top-end',
        					icon: 'success',
/*         					title:'Oops..!!',
 */        					text: 'user logout Successfully',
/*         					showConfirmButton: true,
 */        						
      					})
      					
      					
  
   							</script>
   							
   							
   							<% 
				session.removeAttribute("delete-success");

		}

	}
%>
        <div class="top">
        <span><label><a href="usersignup.jsp">dont Have an account?</a></label><span>
            
            
        </div>
       <header>Login</header>
        <div class="input-field">
            <input type="text" class="input" placeholder="Username" name="username" id="">
            <i class='bx bx-user' ></i>
        </div>

        <div class="input-field">
            <input type="Password" class="input" placeholder="enter Password" name="password" id="input-field2" required>
            <i class='bx bx-lock-alt'></i>
            <i class="fa fa-eye-slash" id="toggle-password2" onclick="togglePassword2()" id="ii"></i>
        </div>


        <div class="input-field">
            <input type="submit" class="submit" value="Login" id="">
        </div>

        <div class="two-col">
            <div class="one">
             <label><a href="usersignup.jsp">Sign up</a></label>
<!--                <a href="sign_up.jsp">sign up</a>
 -->            </div>
            <div class="two">
                <label><a href="#">Forgot password?</a></label>
            </div>
        </div>
    </form>
    </div>
</div>  

 <script>
        function togglePassword2() {
          var passwordField = document.getElementById("input-field2");
          var toggleIcon = document.getElementById("toggle-password2");
          if (passwordField.type === "password") {
            passwordField.type = "text";
            toggleIcon.classList.remove("fa-eye-slash");
            toggleIcon.classList.add("fa-eye");
          } else {
            passwordField.type = "password";
            toggleIcon.classList.remove("fa-eye");
            toggleIcon.classList.add("fa-eye-slash");
          }
        }
      </script>
</body>
</html>