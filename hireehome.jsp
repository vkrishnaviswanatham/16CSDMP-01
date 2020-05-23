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
				<div class="inner split">
					<section>
						
						<center>
						<br>
						<h2>Hiree Home</h2>
						<table>
						<%@include file="dbcon.jsp"%>
						<%@page import="java.util.Date"%>
						<%@page import="java.text.SimpleDateFormat"%>
						<%@page import="java.text.DateFormat"%>
						<%
						String heid=(String)session.getAttribute("heid");
						Statement st=con.createStatement();
						ResultSet rs=st.executeQuery(" select * from hiree where heid='"+heid+"' ");
						if(rs.next()){
							int exp=Integer.parseInt(rs.getString(10));
							DateFormat df=new SimpleDateFormat("yyyy");
							Date dt=new Date();
							
							int dob=Integer.parseInt(rs.getString(9));
							DateFormat df1=new SimpleDateFormat("yyyy");
							Date dt1=new Date();
							
							%>
						<tr><th><center>ID No.</center></th><td><center><%=rs.getString(7)%></center></td></tr>
						<tr><th><center>Name</center></th><td><center><%=rs.getString(2)%></center></td></tr>
						<tr><th><center>Phone</center></th><td><center><%=rs.getString(4)%></center></td></tr>
						<tr><th><center>Address</center></th><td><center><%=rs.getString(5)%></center></td></tr>
						<tr><th><center>Occupation</center></th><td><center><%=rs.getString(6)%></center></td></tr>
						<tr><th><center>Experience</center></th><td><center><%=Integer.parseInt(df.format(dt))-exp%></center></td></tr>
						<tr><th><center>Age</center></th><td><center><%=Integer.parseInt(df1.format(dt1))-dob%></center></td></tr>
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