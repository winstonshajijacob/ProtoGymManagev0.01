
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link href="indexstyle.css" rel="stylesheet" />
	<title></title>
</head>  
	<body onload="sliderF()">
		<script>
                                   

            function validatePassword() {
                             var password = document.getElementById("password"), confirm_password = document.getElementById("confirm_password");
                          if(password.value != confirm_password.value) {
                             // confirm_password.setCustomValidity("Passwords Don't Match");
                              alert('passwords do not match');
                              return false;
                          } else
                          {
                             // confirm_password.setCustomValidity('');
                             
                }
                return true;
                        

                       // password.onchange = validatePassword;
                //  confirm_password.onkeyup = validatePassword;
            }
            </script>
        <script>
			(function() {
	
	function Slideshow( element ) {
		this.el = document.querySelector( element );
		this.init();
	}
	
	Slideshow.prototype = {
		init: function() {
			this.wrapper = this.el.querySelector( ".slider-wrapper" );
			this.slides = this.el.querySelectorAll( ".slide" );
			this.previous = this.el.querySelector( ".slider-previous" );
			this.next = this.el.querySelector( ".slider-next" );
			this.index = 0;
			this.total = this.slides.length;
			this.timer = null;
			
			this.action();
			this.stopStart();	
		},
		_slideTo: function( slide ) {
			var currentSlide = this.slides[slide];
			currentSlide.style.opacity = 1;
			
			for( var i = 0; i < this.slides.length; i++ ) {
				var slide = this.slides[i];
				if( slide !== currentSlide ) {
					slide.style.opacity = 0;
				}
			}
		},
		action: function() {
			var self = this;
			self.timer = setInterval(function() {
				self.index++;
				if( self.index == self.slides.length ) {
					self.index = 0;
				}
				self._slideTo( self.index );
				
			}, 2000);
		},
		stopStart: function() {
			var self = this;
			self.el.addEventListener( "mouseover", function() {
				clearInterval( self.timer );
				self.timer = null;
				
			}, false);
			self.el.addEventListener( "mouseout", function() {
				self.action();
				
			}, false);
		}
		
		
	};
	
	document.addEventListener( "DOMContentLoaded", function() {
		
		var slider = new Slideshow( "#main-slider" );
		
	});
	
	
})();
		</script>
	
		<div class="main-container">
		<div class="navbar">
			<div class="sub-container">
			<div class="logo"> 
				<img src="Images/LogoFit.png"/>
			</div>


			<div class="side">
					<button class="buttonStyle" onclick="document.getElementById('modal-wrapper1').style.display='block'" style="width:100px; ">
							Login</button>
					<button class="buttonStyle" onclick="document.getElementById('modal-wrapper2').style.display='block'" style="width:100px; ">
							Sign Up</button>
				</div>


			<%--<div class="menu">
				<ul class="links">
					<li><a href="#">Plans</a></li>
					<li><a href="#">Contact</a></li>
					<li><a href="#">Calorie Calculator</a></li>
				</ul>
			</div>--%>
				
			</div>
				
		</div>
			<div class="slider" id="main-slider"><!-- outermost container element -->
					<div class="slider-wrapper"><!-- innermost wrapper element -->
							<img src="Images/slide0.jpg" alt="First" class="slide" /><!-- slides -->
							<img src="Images/slide1.jpg" alt="Second" class="slide" />
							<img src="Images/slide2.jpg" alt="Third" class="slide" />
					</div>
			</div>	
			<footer class="footer-main">

			<div class="footer-left">
			   <img src="Images/LogoFit.png"/>
				

			

			</div>
				

				<div id="modal-wrapper1" class="modal">
  
  <form class="modal-content animate" method="post" runat="server" > <%--<form id="form1" runat="server">--%>
		
	<div class="imgcontainer">
	  <span onclick="document.getElementById('modal-wrapper1').style.display='none'" class="close" title="Close PopUp">&times;</span>
	  <img src="Images/Avatar.png" alt="Avatar" class="avatar"/>
	  <h1 style="text-align:center">Login</h1>
	</div>

	<div class="container">
	  <input type="text" placeholder="Enter Username" name="uname1"/>
	  <input type="password" placeholder="Enter Password" name="psw"/>        
	  <button type="submit" runat="server" onserverclick="userlogin">Login</button>
	  <%--<input type="checkbox" style="margin:26px 30px;"/> Remember me    --%>  
	 <%-- <a href="#" style="text-decoration:none; float:right; margin-right:34px; margin-top:26px;">Forgot Password ?</a>--%>
	</div>
	
  </form>
					</div>
					<div id="modal-wrapper2" class="modal">
					 <form class="modal-content animate" action="signup.aspx" onsubmit="return validatePassword()"  method="get" id="registerform"> <%--<form id="form1" runat="server">--%>
		
	<div class="imgcontainer">
	  <span onclick="document.getElementById('modal-wrapper2').style.display='none'" class="close" title="Close PopUp">&times;</span>
	  <img src="Images/Avatar.png" alt="Avatar" class="avatar"/>
	  <h1 style="text-align:center">Sign Up</h1>
	</div>

	<div class="container">
	  
		<input type="text" placeholder="Enter a Username" name="uname" required/>
		<input type="text" placeholder="Enter Name" name="name" required/>
		<input type="email" placeholder="Enter Email" name="mailid" required/>+
		<input type="number" placeholder="Enter Mobile Number" name="Mob" required/>
	  <input type="password" placeholder="Enter Password" name="pass" id="password" required/>  
		<input type="password" placeholder="Repeat Password" name="password-ver" id="confirm_password" required/> 
	  <button type="submit"  >Sign Up</button>
	     
	  <a href="#" style="text-decoration:none; float:right; margin-right:34px; margin-top:26px;">Forgot Password ?</a>
	</div>
	
  </form>
  
</div>
				<script>
		// If user clicks anywhere outside of the modal, Modal will close

					var modal = document.getElementById('modal-wrapper1');
					var modall = document.getElementById('modal-wrapper2');
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
			else if(event.target == modall) {
				modall.style.display = "none";
			}
		}
		</script>
				
		

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
		
</body>
</html>
