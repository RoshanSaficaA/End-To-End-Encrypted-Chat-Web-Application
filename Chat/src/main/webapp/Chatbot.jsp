<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ChatBox...</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.3/jquery.mCustomScrollbar.min.css'>
<link rel="stylesheet" href="chat.css">
<style>
  .hide { position:absolute; top:-1px; left:-1px; width:1px; height:1px; }
</style>
</head>
<body>
<div class="con1">
           <div class="nav1">
            <a  id="a11" href="Login.jsp">Logout</a>  
            <a  id="a11" href="#" onclick="color()">Color</a>
            <iframe name="hiddenFrame" class="hide"></iframe>
            <form action="chatBack.jsp" method="post" target="hiddenFrame">
<input type="text" name="view" id="view" style="display:none"/>
<input type="text" name="view1" id="view1" style="display:none"/>
 <button type="submit" id="a12">Send</button>
</form>
           </div>
           </div>
<section class="avenue-messenger">   
  <div class="menu">
   <div class="items">
 <span>
     <a href="" title="Minimize">&mdash;</a><br>
<!--     
     <a href="">enter email</a><br>
     <a href="">email transcript</a><br>-->
     <a  href="" title="End Chat">&#10005;</a>
     </span></div>
    <div class="button">...</div>
  </div>
  <div class="agent-face">
    <div class="half">
     <img class="agent circle" src="CLogin.png" alt="Jesse Tino">
     </div>
  </div>
<div class="chat">
  <div class="chat-title">
    <h1>Roshan Safica </h1>
    <h2>ChatBot</h2>
  <!--  <figure class="avatar">
      <img src="http://askavenue.com/img/17.jpg" /></figure>-->
  </div>
  <div class="messages">
    <div class="messages-content">
    </div>
  </div>
  <div class="message-box">

    <textarea class="message-input" name="mess" id="mess" placeholder="Enter Your Message Here..."></textarea>
  	<button type="submit" class="message-submit" onclick="chat()">Send</button>

  </div>
</div>
</section>
<script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.3/jquery.mCustomScrollbar.concat.min.js'></script>
<script  src="Chat.js"></script>
<script>
function chat()
{
function encryptMsg(str, shift) {
	   let encreptedStr = ' ';
	    
	   for (let i = 0; i < str.length; i++) {
	      let charCode = str.charCodeAt(i);
	       
	      if (charCode >= 65 && charCode <= 90) {
	         // uppercase letters
	         encreptedStr += String.fromCharCode((charCode - 65 + shift) % 26 + 65);
	      } else if (charCode >= 97 && charCode <= 122) {
	         // lowercase letters
	         encreptedStr += String.fromCharCode((charCode - 97 + shift) % 26 + 97);
	      } else {
	         // non-alphabetic characters
	         encreptedStr += str.charAt(i);
	      }
	   }
	   return encreptedStr;
	}
	const plaintext = document.getElementById("mess").value;
	const shift = 5;
	const ciphertext = encryptMsg(plaintext, shift);
	document.getElementById("view").value=ciphertext;
	document.getElementById("view1").value=plaintext;
}

function color()
{
	  document.getElementsByClassName('avenue-messenger ').style.backgroundColor = "red";
	}
</script>

</body>
</html>
