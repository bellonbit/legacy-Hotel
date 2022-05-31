<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="index.css">
<script>
function validateForm() {
    var x = document.forms["myForm"]["email_id"].value;
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    var y = document.forms["myForm"]["pwd"].value;
    if (x == null || x == "") {
    	document.getElementById("error1").innerHTML = "Enter email id";
    	document.getElementById("email_id").focus();
        //alert("Name must be filled out");
        return false;
    }
    
    if(!re.test(x)){
    	//alert("Enter valid email");
    	document.getElementById("error1").innerHTML = "Enter valid email id";
    	document.getElementById("email_id").value = "";
    	document.getElementById("email_id").focus();
    	return false;
    }
 
    if (y == null || y == "") {
       // alert("Password must be filled out");
        document.getElementById("error2").innerHTML = "Enter password";
        document.getElementById("pwd").focus();
        return false;
    }
}
</script>
</head>

<body id = "body">
<a href="index.jsp"><img id="title_img" src="Images/title_image1.jpg" width="200" height="200"></a>
<header id ="header">
  
  <a class="nav1"  href="about.html">ABOUT</a>
  <a class="nav1"  href="menu.html">MENU</a>
  <a class="nav1"  href="catering.html">CATERING</a>
  <a class="nav1"  href="contact.html">CONTACT</a>
  
<button class = "btn1" onclick="location.href = 'Reg.html';">Sign Up</button>
<br><br>
<div align="right">

<form name="myForm" action="login.jsp" onsubmit="return validateForm()" method="post">

<table><tr><td>UserName <div id = "error1" style = "color:green;font-weight:bold;"></div></td>
<td><input type="text" name="email_id" id = "email_id" placeholder = "me@example.com"></td>

<td>Password <div id = "error2" style = "color:green;font-weight:bold;"></div></td>
<td> <input type="password" name="pwd" id = "pwd" placeholder = "Enter password"></td></tr>
</table>
<div align="right">
<input class="submit" type="submit" value="Submit" >
<%
    if(null!=request.getAttribute("errorMessage"))
    {
        out.println(request.getAttribute("errorMessage"));
    }
%>
</div>
</form>
</div>
</header>
<h1 id = "title">Seshu's</h1>

<div id = "layout">

<div class="index_images">
<div id="text_index">
<h1> Find your favorite craving!</h1>
<p>From fresh-milled spices to natural ingredients, we think you and your body will appreciate the wholesome
 and authentic nature of our food.
 To top it off, our customer service will never let you down. We hope you enjoy your experience! </p>
</div>
<img class="mySlides" src="Images/cs2.jpg" height="500" width="600" >
<img class="mySlides" src="Images/cs3.jpg" height="500" width="600" >
<img class="mySlides" src="Images/S3.jpg" height="500" width="600" >
<img class="mySlides" src="Images/d4.jpg" height="500" width="600" >

<a class="btn-floating1"  onclick="plusDivs(-1)">&lt;</a>
<a class="btn-floating2"  onclick="plusDivs(1)">&gt;</a>

</div>
 
</div>

<div id = "linktotop">
<a id ="backtotop" href= "#body">|Back to Top|</a>
</div><br><br>

<footer id = "footer">@Copyright 2016 Seshu's  </footer>
<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length} 
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}

</script>


</body>
</html>
