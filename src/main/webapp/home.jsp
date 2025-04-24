<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>	
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/home.css">
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
 /*    background-image: url("1.jpg") !important; */
    background-color:cadetblue;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat;
    
}

.submit{
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
  float:right;
  justify-content: space-between;
 display:flex;

  
}
.btncon1{
padding-right:20px;
margin-right:0px;
}
.btncon2{
padding-left:0px;
}
    </style>

</head>
<body>
     
    <header>
 
        
 
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
 -->        </nav>
 
     
       <div class="btncon">
       <div class="btncon1">
        <a href="adminlogin.jsp" class="cta"><input type="submit" class="submit" value="Admin Login" id=""></a>
        </div>
        <div class="btncon2">
       <a href="userlogin.jsp" class="cta"><input type="submit" class="submit1" value="User Login" id=""></a>
       </div>
       </div>
    </header>



    <h1>Welcome to Online Voting System</h1>
 
</body>
</html>