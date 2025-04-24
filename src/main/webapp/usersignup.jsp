<!DOCTYPE html>
 <html lang="en">
 <head>

     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="css/style.css">
     <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
     
 <script
  src="https://code.jquery.com/jquery-3.6.4.min.js"integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
  crossorigin="anonymous"></script>
     <title>Login</title>
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
        function togglePassword4() {
          var passwordField = document.getElementById("input-field4");
          var toggleIcon = document.getElementById("toggle-password4");
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
     
     <script>        
           function phoneno(){  
        	   console.log('Inside fun')
            $('#phone').keypress(function(e) {
                var a = [];
                var k = e.which;

                for (i = 48; i < 58; i++)
                    a.push(i);

                if (!(a.indexOf(k)>=0))
                    e.preventDefault();
            });
        }
       </script>
       
        <script>        
           function phoneno1(){  
        	   console.log('Inside fun')
            $('#phone1').keypress(function(e) {
                var a = [];
                var k = e.which;

                for (i = 48; i < 58; i++)
                    a.push(i);

                if (!(a.indexOf(k)>=0))
                    e.preventDefault();
            });
        }
       </script>
      <style>
      body{
     background-color:cadetblue;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat;
    
}

.alert {
  padding: 10px;
  background-color: blue;
  color: white;
  border-radius: 10px
}
.alert1 {
  padding: 10px;
  background-color: red;
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
        .top{
            
             padding-top: 90px;
            padding-bottom: 20px;
        }
        .box{
         width: 700px;	
         margin: auto;
         margin-top: 10px;
         min-height: 0vh;
              }
      
        .submit1{
            border: none;
            border-radius: 30px;
            font-size: 15px;
            height: 45px;
            outline: none;
            width: 700px;
            color: black;
            background: rgba(255,255,255,0.7);
            cursor: pointer;
            transition: .3s ;
            
            margin-right:30px;
            
            margin-left:430px ;
            margin-top: 20px; 
        }
        .submit1:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}
input[type="radio" i] {
        background-color: initial;
        cursor: default;
        appearance: auto;
        box-sizing: border-box;
        margin: 3px 3px 0px 5px;
        font-size: 50px;
        margin-right:0px;
        margin-top: 15px;
        border: initial;
}
.container {
    width: 50%;
    float: left;
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
      </style> 
 </head>
 <body>
  
    <form action="voterregistration" method="post">
    
    <div>
    
    </div>
    <div class="top">
    
 </div>
        <span>Have an account?</span>
        
        <header><b>sign up</b></header>
        <div class="box2">
 
               <% 
   if(!session.isNew())
	{
		session=request.getSession();
		String registered_user=(String)session.getAttribute("already-registered");
		String value=(String)session.getAttribute("registration_status");
		/* System.out.println(value); */
		if(registered_user=="true")
		{
			%>
			<div class="alert1">
            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
             Voter is already Registered.
            </div>
  			<% 
  			session.removeAttribute("already-registered");

		}
		if(value=="true")
		{
			%>
			<div class="alert">
            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
             Voter Registered Successfully.
            </div>
  			<% 
		}
		session.removeAttribute("registration_status");

	}
%>
        </div>
        
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
           <i class='bx bx-user'></i>
        </div>

       

        <div class="input-field">
            <input type="text" class="input" placeholder="Adhar_Card no"  name="Adhar_Card no" id="phone" onkeypress="phoneno()" maxlength="12" required>
            <i class='bx bx-id-card'></i>
        </div>

        
        <div class="input-field">
           <input type="text" class="input" placeholder="phone no"  name="phone no" id="phone1"   onkeypress="phoneno1()" maxlength="10" required>
          <i class='bx bx-mobile-alt'></i> 
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

        <i class='bx bx-male-female'></i>
        
    </div>
     </div>


     </div>
     <div class="container" style="padding-top: 0px;">
 
      <div class="input-field">
            <input type="email" class="input" placeholder="email" name="email" id="" required>
            <i class='bx bx-envelope'></i>
        </div>
      
       <div>
     <!--  <div class="input-field">
          <input type="text" class="input" placeholder="Username" name="Username" id="">
          <i class='bx bx-user' ></i>
      </div>
 -->
      <div class="input-field">
        <input type="Password" class="input" placeholder="enter Password" name="Password" id="input-field2" required>
        <i class='bx bx-lock-alt'></i>
        <i class="fa fa-eye-slash" id="toggle-password2" onclick="togglePassword2()" id="ii"></i>
    </div>

      
    <!-- <div class="input-field">
        <input type="Password" class="input" placeholder="enter Password" id="input-field4" required>
        <i class='bx bx-lock-alt'></i>
        <i class="fa fa-eye-slash" id="toggle-password4" onclick="togglePassword4()" id="ii"></i>
    </div> -->

     <div class="input-field">
         <input type="date" class="input"  name="dob" id="DOB" required>
        
         <i class='bx bx-calendar'></i>
<!--          <span id = "message" style="color:red"> </span> <br><br>  
 -->     </div>
     <div class="input-field">
        <input type="text" class="input" placeholder="address" name="address" id="" required>
        <i class='bx bx-home-alt'></i>
    </div>
     </div>
   
   
   
      
   

     </div>
   </div>  
     <div class="input-field1">
     <input type="submit" class="submit1" value="sign up" id="" required>
    </div>
   </form>
   
   
     </body>
 </html>