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
						<form action="hirerotp.jsp" method="post">
						<h2>Update Profile</h2>
						<%@include file="dbcon.jsp"%>
						<%
						System.out.println("start");
						String hrid=(String)session.getAttribute("hrid");
						Statement st=con.createStatement();
						ResultSet rs=st.executeQuery(" select * from hirer where hrid='"+hrid+"' ");
						if(rs.next()){
							%>
						<table>
						<tr><input type="text" name="name" value="<%=rs.getString(2)%>" style="margin-bottom: 20px;"></tr>
						<tr><input type="text" name="hreid" value="<%=rs.getString(7)%>" readonly style="margin-bottom: 20px;"></tr>
						<tr><input type="number" name="phn" value="<%=rs.getString(5)%>" style="margin-bottom: 20px;"></tr>
						<tr><input type="email" name="email" value="<%=rs.getString(3)%>" style="margin-bottom: 20px;"></tr>
						<tr><input type="text" name="addr" value="<%=rs.getString(6)%>" style="margin-bottom: 20px;"></tr>
						<tr><input type="submit" value="Update" class="button alt" style="margin-bottom: 20px;"></tr>
						</table>
						<%}%>
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
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>