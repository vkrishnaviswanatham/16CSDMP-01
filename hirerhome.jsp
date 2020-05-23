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
						<br>
						<h2>Hirer Home</h2>
						<table>
						<%@include file="dbcon.jsp"%>
						<%
						String hrid=(String)session.getAttribute("hrid");
						Statement st=con.createStatement();
						ResultSet rs=st.executeQuery(" select * from hirer where hrid='"+hrid+"' ");
						if(rs.next()){%>
						<tr><th><center>ID No.</center></th><td><center><%=rs.getString(7)%></center></td></tr>
						<tr><th><center>Name</center></th><td><center><%=rs.getString(2)%></center></td></tr>
						<tr><th><center>Email</center></th><td><center><%=rs.getString(3)%></center></td></tr>
						<tr><th><center>Phone</center></th><td><center><%=rs.getString(5)%></center></td></tr>
						<tr><th><center>Address</center></th><td><center><%=rs.getString(6)%></center></td></tr>
						<%}%>
						</table>
						<br>
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