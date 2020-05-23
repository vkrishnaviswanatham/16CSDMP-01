<!DOCTYPE HTML>

<html>
	<head>
		<title>Empowering Handyman</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>

		<!-- Banner -->
			<section id="banner">
				<div>
					<section>
						<h2><a href="hirerhome.jsp">Home</a> | <a href="hrupdate.jsp">Update</a> | <a href="hrsearch.jsp">Search</a> | <a href="hrrate.jsp">Rate</a> | <a href="index.html">Logout</a></h2>
					</section>
				</div>
			</section>

		<!-- One -->
			<section id="one" class="wrapper">
				<div class="inner split">
					<section>
						
						<center>
						<form action="hrrate1.jsp" method="post">
						<h2>Rate Hiree</h2>
						<table>
						<tr><input type="text" name="heid" placeholder="Hiree ID" required style="margin-bottom: 20px;"></tr>
						<tr><input type="text" name="review" placeholder="Enter Review" required style="margin-bottom: 20px;"></tr>
						<tr><select name="rating" required style="margin-bottom: 20px;">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						</select></tr>
						<tr><input type="submit" value="Submit" class="button alt" style="margin-bottom: 20px;"></tr>
						</table>
						</form>
						</center>
						
					</section>
				</div>
			</section>


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
			<script src="assets/js/main.js"></script>

	</body>
</html>