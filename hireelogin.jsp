<!DOCTYPE HTML>
<!--
	Prism by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Empowering Handyman</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body>

		<!-- Banner -->
			<section id="banner">
				<div class="inner split">
					<section>
						<h2>Hiree Panel | <a href="index.html">Home</a></h2>
					</section>
					<!--<section>
						<p>The idea is to provide a framework for medium connecting people who are looking to hire workers.</p>
						<ul class="actions">
							<li><a href="home.jsp" class="button special">Get started</a></li>
						</ul>
					</section>-->
				</div>
			</section>

		<!-- One -->
			<section id="one" class="wrapper">
				<div class="inner split">
					<section>
						
						<center>
						<form action="login.jsp" method="post">
						<h2>Login</h2>
						<table>
						<input type="hidden" name="opt1" value="4">
						<tr><input type="text" name="name1" placeholder="User ID" required style="margin-bottom: 20px;"></tr>
						<tr><input type="password" name="pwd1" placeholder="Password" required style="margin-bottom: 20px;"></tr>
						<tr><input type="submit" value="Submit" class="button alt" style="margin-bottom: 20px;"></tr>
						<!--<tr><h3>New!>>><a href="hirerreg.jsp">Register</a></h3></tr>
						<tr><h3><a href="index.html">Home</a></h3></tr>-->
						</table>
						</form>
						</center>
						<!--<ul class="actions">
							<li><a href="#" class="button alt">Learn more</a></li>
						</ul>-->
					</section>
					<section>
<style>
input[type='date']:before {
  content: attr(placeholder)
}

  input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button { 
  -webkit-appearance: none; 
  margin: 0; 
}
</style>					
						<center>
						<form action="register.jsp" method="post" enctype="multipart/form-data">
						<h2>Register</h2>
						<table>
						<input type="hidden" name="opt" value="5">
						<tr><input type="text" name="name" placeholder="User Name" required style="margin-bottom: 20px;"></tr>
						<tr><input type="password" name="pwd" placeholder="Password" required style="margin-bottom: 20px;"></tr>
						<tr><input type="number" name="phn" placeholder="Phone Number" required style="margin-bottom: 20px;"></tr>
						<tr><input type="text" name="addr" placeholder="Address" required style="margin-bottom: 20px;"></tr>
						<tr><input type="number" name="dob" placeholder="Year of Birth" required style="margin-bottom: 20px;"></tr>
						<tr><input type="number" name="exp" placeholder="Year of Working" required style="margin-bottom: 20px;"></tr>
						<tr><select name="occ" required style="margin-bottom: 20px;">
						<%@include file="dbcon.jsp"%>
						<%
						Statement st=con.createStatement();
						ResultSet rs=st.executeQuery(" select * from occlist ");
						while(rs.next()){%>
						<option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
						<%}%>
						</select></tr>
						<tr><input type="number" name="adhaarnum" placeholder="Adhaar Number" required style="margin-bottom: 20px;"></tr>
						<tr><input type="file" name="adhaarimg" placeholder="Adhaar Image" required style="margin-bottom: 20px;"></tr>
						<tr><input type="submit" value="Register" class="button alt" style="margin-bottom: 20px;"></tr>
						</table>
						</form>
						</center>
						<!--<ul class="actions">
							<li><a href="#" class="button alt">Learn more</a></li>
						</ul>-->
					</section>
					<!--<section>
						<ul class="checklist">
							<li>Search Hiree by <b>SKILL</b></li>
							<li>Search Hiree by <b>EXPERIENCE</b></li>
							<li>Search Hiree by <b>AGE</b></li>
							<li>Search Hiree by <b>LOCATION</b></li>
						</ul>
					</section>-->
				</div>
			</section>

		<!-- Two -->
<!--			<section id="two" class="wrapper style2 alt">
				<div class="inner">
					<div class="spotlight">
						<div class="image">
							<img src="images/hirer.jpg" alt="" />
						</div>
						<div class="content">
							<h3>Hirer Panel</h3>
							<p>Hirer can select a location where he/she wish to hire by applying filters like skill,experince and age.</p>
							<ul class="actions">
								<li><a href="hirerlogin.jsp" class="button alt">Login</a></li>
							</ul>
						</div>
					</div>
					<div class="spotlight">
						<div class="image">
							<img src="images/hiree.jpg" alt="" />
						</div>
						<div class="content">
							<h3>Hiree Panel</h3>
							<p>New people who are looking for work need to register specifying their skill and basic details.</p>
							<ul class="actions">
								<li><a href="hireelogin.jsp" class="button alt">Login</a></li>
							</ul>
						</div>
					</div>
					<div class="spotlight">
						<div class="image">
							<img src="images/pic03.jpg" alt="" />
						</div>
						<div class="content">
							<h3>Admin Panel</h3>
							<p>Admin will monitor all the details of the hirer and hiree.</p>
							<ul class="actions">
								<li><a href="adminlogin.jsp" class="button alt">Login</a></li>
							</ul>
						</div>
					</div>
					<!--<ul class="actions special">
						<li><a href="#" class="button alt">Ipsum magna tempus</a></li>
					</ul>-->
				<!--</div>
			</section>-->

		<!-- Contact -->
			<!--<section id="contact" class="wrapper">
				<div class="inner split">
					<section>
						<h2>Orci malesuada</h2>
						<p>Morbi pharetra vitae felis placerat pharetra. Nulla risus orci, dapibus id malesuada et nec, malesuada quis pellentesque eget.</p>
						<form action="#" class="alt" method="POST">
							<div class="row uniform">
								<div class="6u 12u$(xsmall)">
									<input name="name" placeholder="Name" type="text">
								</div>
								<div class="6u$ 12u$(xsmall)">
									<input name="email" placeholder="Email" type="email">
								</div>
								<div class="12u$">
									<textarea name="message" placeholder="Message" rows="4"></textarea>
 								</div>
 							</div>
 							<ul class="actions">
 								<li><input class="alt" value="Send message" type="submit"></li>
 							</ul>
 						</form>
					</section>
					<section>
						<ul class="contact">
							<li class="fa-twitter"><a href="#">twitter.com/untitled-tld</a></li>
							<li class="fa-facebook"><a href="#">facebook.com/untitled-tld</a></li>
							<li class="fa-instagram"><a href="#">instagram.com/untitled-tld</a></li>
							<li class="fa-envelope"><a href="#">information@untitled.tld</a></li>
							<li class="fa-home">1234 Somewhere Road Suite 9823<br/>Nashville, TN 00000-0000</li>
						</ul>
					</section>
				</div>
			</section>-->

		<!-- Footer -->
			<footer id="footer">
				<div class="copyright">
					&copy; Empowering Handyman. All rights reserved.
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>