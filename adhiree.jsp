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
						<h2><a href="adminhome.jsp">Home</a> | <a href="adhirer.jsp">Hirers</a> | <a href="adhiree.jsp">Hirees</a> | <a href="adsearch.jsp">Search</a> | <a href="adratings.jsp">Ratings</a> | <a href="index.html">Logout</a></h2>
					</section>
				</div>
			</section>

		<!-- One -->
			<section id="one" class="wrapper">
				<div>
					<section>
						
						<center>
						<br>
						<h2>Hiree Details</h2>
						<table border="3">
						<tr>
						<td><center>ID No.</center></td>
						<td><center>Name</center></td>
						<td><center>Occupation</center></td>
						<td><center>Phone No.</center></td>
						<td><center>Address</center></td>
						<td><center>Adhaar Number</center></td>
						<td><center>Adhaar Image</center></td>
						</tr>
						<%@include file="dbcon.jsp"%>
						<%
						Statement st=con.createStatement();
						ResultSet rs=st.executeQuery(" select * from hiree ");
						while(rs.next()){%>
						<tr>
						<td><center><%=rs.getString(7)%></center></td>
						<td><center><%=rs.getString(2)%></center></td>
						<td><center><%=rs.getString(6)%></center></td>
						<td><center><%=rs.getString(4)%></center></td>
						<td><center><%=rs.getString(5)%></center></td>
						<td><center><%=rs.getString(13)%></center></td>
						<td><center><a href="Adhaar/<%=rs.getString("adhaarimg")%>" target="_blank">View</a></center></td>
						</tr>
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