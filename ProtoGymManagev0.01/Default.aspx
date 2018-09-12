<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link href="indexstyle.css" rel="stylesheet" />
	<title></title>
</head>  
	<body onload="sliderF()">
	<form id="form1" runat="server">
		<div class="main-container">
		<div class="navbar">
			<div class="sub-container">
			<div class="logo"> 
				<img src="Images/LogoFit.png"/>
			</div>
			<div class="menu">
				<ul class="links">
					<li><a href="#">Plans</a></li>
					<li><a href="#">Contact</a></li>
					<li><a  class="fake-button" href="#">Login</a></li>
					<li><a  class="fake-button" href="#">Sign Up</a></li>
				</ul>
			</div>
				</div>
		</div>
			<div class="slider">

				<img id="slideshow" src="Images/slide4.jpg" class="slide-img"  width="100%"/>
				<script type="text/javascript">
					var i = 0;
					var image = document.getElementById("slideshow");
					function changeImage() {
					  
						document.getElementById("slideshow").src = "Images/slide" + (i++ % 5) + ".jpg"
						


					}
					function sliderF() {
											  
						setInterval(changeImage, 3000)
					   }
				</script>

			</div>
			<footer class="footer-main">

			<div class="footer-left">
			   <img src="Images/LogoFit.png"/>
				

			

			</div>

			<div class="footer-center">

				<p>Visit Us:</p>
				<p>Kristu Jayanti College,Kothanur P.O</p>
				<p>Bangalore - 570077</p>


					
					<p>Mail Us:- <a href="mailto:support@company.com">support@company.com</a></p>
				</div>


			<div class="footer-right">

				<p>
					Follow Us On:
				</p>

				<div class="footer-icons">
					<a href="#"><img src="Images/ico1.png" /></a>
					<a href="#"><img src="Images/ico2.png" /></a>
					<a href="#"><img src="Images/ico3.png" /></a>
					<a href="#"><img src="Images/ico4.png" /></a>

					

				</div>

			</div>

		</footer>

			   
			</div>
		
	</form>
</body>
</html>
