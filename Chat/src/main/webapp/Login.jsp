<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" initial-scale=1.0">
<title>Login Page</title>
<style>

body
                { 
                    margin:0;
                    height:100%;
                    width:100%;
                }
				                .whole
				                {
               	 				padding:20px;
                                width:680px;
                                height:450px;
                                font-size:20px;
                                border-radius: 13px 13px;
                                box-shadow: 2px 5px 15px grey;
                                background-color: white;	
                                margin-left:26%;
                                margin-top:8%;
                				}
                        #but1{
                           padding:10px 20px;
                           cursor:pointer;
                           transform: translate(130%,-20%);
                           color:lavenderblush;
                           background-color:#1DB9C3;
                           font-size: 16px;
                           border: none;
                           border-radius: 4px 4px;
                           box-shadow: inset 1px 8px 25px #1DB9C3;
                        }
                        #but2{
                           padding:10px 20px;
                           cursor:pointer;
                           transform: translate(130%,-20%);
                           color:lavenderblush;
                           background-color:#1DB9C3;
                           font-size: 16px;
                           border: none;
                           border-radius: 4px 4px;
                           box-shadow: inset 1px 8px 25px #1DB9C3;
                        }
                        input
                        {
                            background-color: rgba(128, 128, 128, 0.24);
                            padding:8px;
                            border-radius: 5px 5px;
                        }
                        		.box2
				                {
               	 				padding:20px;
                                width:300px;
                                height:400px;
                                font-size:20px;
                                background-color: white;	
                                margin-left:50%;
                                margin-top:-60%;
                				}
                				.box1
				                {
               	 				padding:20px;
                                width:300px;
                                height:400px;
                                font-size:20px;
                                background-color: white;	
                                margin-right:-40%;
                				}
                				#hr
                				{
                				color: black;
                				text-decoration:none;
                				margin-left:17%;
                				} 
                				#hr:hover
                				{
                				color:red;
                				} 
                				hr
                				{
							      height: 40vh;
							      width:.5vw;
							      border-width:0;
							      background-color:black;
							      margin-top:-50%;
							    }       
</style>
</head>
<body>       
   		 <div class="whole">
           <div class="box1"><br/><br/>
            <center><h1 style="font-family: 'Brush Script MT', cursive;"><b>Sign In</b></h1>
            <form action="Logindata.jsp" method="post" >
           <table>
                 <tr><td>E-mail </td></tr>
                     <tr><td><input type="email" id="mail" name="email" required/></td></tr>
                 <tr></tr>
                 <tr><td>Password </td></tr>
                 <tr><td><input type="password" id="pass" name="password" required/></td></tr>
          </table><br/></center>
             	 <input type="submit" id="but1" value="SignIn" onclick="WriteName()"/><br/><br/><br/>
             	 <a href="Register.jsp" id="hr">Don't have an Account ?</a>
               </form>
            </div>
            <hr>
           <div class="box2"><br/><br/>
            <center><h1 style="font-family: 'Brush Script MT', cursive;"><b>Admin</b></h1>
            <form action="adminBack.jsp" method="post" >
           <table>
                 <tr><td>Username </td></tr>
                     <tr><td><input type="text" id="mail" name="email" required/></td></tr>
                 <tr></tr>
                 <tr><td>Password </td></tr>
                 <tr><td><input type="password" id="pass" name="password" required/></td></tr>
          </table><br/></center>
             	 <input type="submit" id="but2" value="SignIn" onclick="WriteName()"/><br/> 
               </form>
            </div></div>
            <script language="javascript" type="text/javascript">
            
              // SignIn Validation
                    function WriteName()
                    {
                        var Stored1= document.getElementById("mail1");
                        var Stored2= document.getElementById("pass1");
                        var Stored3= document.getElementById("mail2");
                        var Stored4= document.getElementById("pass2");
              
             if(isFinite(Stored1.value) || Stored1.value == "")
                {
                    alert("Enter the Valid E-mail!");
                }
               
               else if(Stored2.value=="" || isFinite(Stored2.value))
                {
                        alert("Enter the Valid Password!");
                }
               else if(Stored2.value.length < 8)
            	   {
            	   alert("The Password must be Above 8 characters");
            	   }
               else if(isFinite(Stored3.value) || Stored3.value == "")
             {
                 alert("Enter the Valid Admin Username!");
             }
            
            else if(Stored4.value=="" || isFinite(Stored4.value))
             {
                     alert("Enter the Valid Password!");
             }
            else if(Stored4.value.length < 8)
         	   {
         	   alert("The Password must be Above 8 characters");
         	   }
            }
                </script> 
              
</body>
</body>
</html>