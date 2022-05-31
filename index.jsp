<!DOCTYPE html>
<html>
<head>
<title>Seshu</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="index.css">

</head>


<body id = "body">
<a href="index.jsp"><img id="title_img" src="Images/title_image1.jpg" width="200" height="200"></a>
<header id ="header">
  
  <a class="nav1"  href="about.html">ABOUT</a>
  <a class="nav1"  href="menu.html">MENU</a>
  <a class="nav1"  href="catering.html">CATERING</a>
  <a class="nav1"  href="contact.html">CONTACT</a>
  
<button class="btn1" onclick="location.href = 'Reg.html';">Sign Up</button>
|
<button class="btn1" onclick="location.href = 'signin.jsp';">Log In</button>

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

<footer id = "footer"> </footer>
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