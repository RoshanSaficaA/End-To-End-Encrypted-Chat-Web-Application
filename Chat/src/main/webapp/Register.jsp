<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>Registration Page</title>
       <meta name="viewport" content="width=device-width" initial-scale=1.0">
       <link rel="stylesheet" href="style.css" type="text/css">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="http://connect.facebook.net/en_US/all.js"></script>
    </head>
        <body>
        <div id="fb-root"></div>
        <img class="img-CLogin" src="CLogin.png" />
   		 <div class="whole">
           <div class="box">
            <center> <h1 style="font-family: 'Brush Script MT', cursive;"><b>Sign Up</b></h1>
            <form action="insert.jsp" method="post" >
           <table>
                 <tr><td>UserName </td></tr>
                 <tr><td><input type="text" id="name" name="username" required/></td></tr>
                 <tr></tr>
                 <tr><td>E-mail </td></tr>
                     <tr><td><input type="email" id="mail" name="email" required/></td></tr>
                 <tr></tr>
                 <tr><td>Password </td></tr>
                 <tr><td><input type="password" id="pass" name="password" required/></td></tr>
          </table><br/></center>
                 <a href="" > <fb:login-button autologoutlink="true" onlogin="OnRequestPermission();" style="position:absolute; left:875px; top:520px; color:black;">
            </fb:login-button></a>
              
             	 <input type="submit" id="but" value="SignUp" onclick="WriteName()"/><br/> 
               </form>
            </div></div>
           
            <script language="javascript" type="text/javascript">
              // SignUp Validation
                    function WriteName()
                    {
                        var Stored= document.getElementById("name");
                        var Stored1= document.getElementById("mail");
                        var Stored2= document.getElementById("pass");
             if(isFinite(Stored.value) || Stored.value == "")
                {
                    alert("Enter the Valid Name!");
                }
               else if(Stored2.value=="" || isFinite(Stored2.value))
                {
                        alert("Enter the Valid Password!");
                }
               else if(Stored2.value.length < 8)
            	   {
            	   alert("The Password must be Above 8 characters");
            	   }
            }
                </script> 
              
</body>
        </body>
</html>