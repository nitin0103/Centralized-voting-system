<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
     <style type="text/css">
    
@import url('https://fonts.googleapis.com/css2?family=Heebo:wght@300&display=swap');

*{
    font-family: 'Heebo', sans-serif;

    margin: 0;
    padding: 0;
    /* it is use to remove the padding of nav bar or over all extra padding */
}
body{
  /*   background-image: url("1.jpg") !important; */
   background-color:cadetblue;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat;
    
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
    margin-left: -100px
    
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
    width: 90%;
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
    padding-left: 500px;
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
    <script>    
        function setColor(btn, color){
        var count=1;
        var property = document.getElementById(btn);
        if (count == 0){
            property.style.backgroundColor = "#FFFFFF"
            count=1;        
        }
        else{
            property.style.backgroundColor = "#7FFF00"
            count=0;
        }
        }
    </script>

    <title>happy voting</title>
    
    <style type="text/css">
    
    	body{
		background-image: url("1.jpg")   
		 	}
    </style>
</head>
<body>
    <div class="con">
        <nav>
            <ul>
               <li>
                user name
               </li>
            </ul>
        </nav>
    </div>

    <div class="box1">
        <div class="container">
    <table>
        <tr>
            <th>sr</th>
             <th>name </th>
             <TH>view</TH>
             <th>button</th>
        </tr>
        <tr>
            <td>1</td>
            <td>sujal chavan</td>
            <td><input type="button" value="view" class="btn1"></td>
            <td><input type="button" value="vote" class="btn"></td>
        </tr>
        <tr>
            <td>1</td>
            <td>sujal chavan</td>
            <td><input type="button" value="view" class="btn1"></td>
            <td><input type="button" value="vote" class="btn"></td>
        </tr>
        <tr>
            <td>1</td>
            <td>sujal chavan</td>
            <td><input type="button" value="view" class="btn1"></td>
            <td><input type="button" value="vote" class="btn"></td>
        </tr>
        <tr>
            <td>1</td>
            <td>sujal chavan</td>
            <td><input type="button" value="view" class="btn1"></td>
            <td><input type="button" value="vote" class="btn"></td>
        </tr>
        <tr>
            <td>1</td>
            <td>sujal chavan</td>
            <td><input type="button" value="view" class="btn1"></td>
            <td><input type="button" value="vote" class="btn"></td>
        </tr>
        <tr>
            <td>1</td>
            <td>sujal chavan</td>
            <td><input type="button" value="view" class="btn1"></td>
            <td><input type="button" value="vote" class="btn"></td>
        </tr>
         <tr>
            <td>1</td>
            <td>sujal chavan</td>
            <td><input type="button" value="view" class="btn1"></td>
            <td><input type="button" value="vote" class="btn"></td>
        </tr>
         <tr>
            <td>1</td>
            <td>sujal chavan</td>
            <td><input type="button" value="view" class="btn1"></td>
            <td><input type="button" value="vote" class="btn"></td>
        </tr>
         <tr>
            <td>1</td>
            <td>sujal chavan</td>
            <td><input type="button" value="view" class="btn1"></td>
            <td><input type="button" value="vote" class="btn"></td>
        </tr>
         <tr>
            <td>1</td>
            <td>sujal chavan</td>
            <td><input type="button" value="view" class="btn1"></td>
            <td><input type="button" value="vote" class="btn"></td>
        </tr>
    </table> 
</div>
</div>
</body>
</html>