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
						<h2><a href="hireehome.jsp">Home</a> | <a href="heupdate.jsp">Update</a> | <a href="hehits.jsp">Hits</a> | <a href="herating.jsp">Rating</a> | <a href="index.html">Logout</a></h2>
					</section>
				</div>
			</section>

		<!-- One -->
			<section id="one" class="wrapper">
				<div>
					<section>
						
						<center>
						<br>
						<h2>Rating</h2>
						<table>
						<tr>
						<th><center>Hirer ID</center></th>
						<th><center>Rating</center></th>
						<th><center>Review</center></th>
						</tr>
						<%@include file="dbcon.jsp"%>
						<%
						String heid=(String)session.getAttribute("heid");
						Statement st=con.createStatement();
						ResultSet rs=st.executeQuery(" select * from herating where heid='"+heid+"' ");
						while(rs.next()){%>
						<tr>
						<td><center><%=rs.getString(2)%></center></td>
						<td><center><%=rs.getString(4)%></center></td>
						<td><center><%=rs.getString(5)%></center></td>
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