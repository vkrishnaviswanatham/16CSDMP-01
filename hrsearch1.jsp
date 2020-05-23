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
						<h2><a href="hrsearch.jsp">Back</a></h2>
					</section>
				</div>
			</section>

		<!-- One -->
			<section id="one" class="wrapper">
				<div class="inner split">
					<section>
						
						<center>
						<br>
						<h2>Results Found</h2>
						<table>
						<%@include file="dbcon.jsp"%>
						<%@page import="java.util.Date"%>
						<%@page import="java.text.SimpleDateFormat"%>
						<%@page import="java.text.DateFormat"%>
						<%
						String hrid=(String)session.getAttribute("hrid");
						String search=request.getParameter("search");
						System.out.println("search "+search);
						Statement st1=con.createStatement();
						ResultSet rs1=st1.executeQuery(" select * from hiree ");
						while(rs1.next()){
							String occ=rs1.getString(6);
							String addr=rs1.getString(5);
							
							int exp=Integer.parseInt(rs1.getString(10));
							DateFormat df2=new SimpleDateFormat("yyyy");
							Date dt2=new Date();
							
							int dob=Integer.parseInt(rs1.getString(9));
							DateFormat df1=new SimpleDateFormat("yyyy");
							Date dt1=new Date();
							
							Statement st3=con.createStatement();
							int x=st3.executeUpdate(" update hiree set dob1='"+(Integer.parseInt(df1.format(dt1))-dob)+"',exp1='"+(Integer.parseInt(df2.format(dt2))-exp)+"' where id='"+rs1.getString(1)+"' ");
						}
							Statement st2=con.createStatement();
							ResultSet rs2=st2.executeQuery(" select * from hiree where occ='"+search+"' or addr='"+search+"' or dob1='"+search+"' or exp1='"+search+"'  ");
							while(rs2.next()){
							%>
						<tr><th><center>Name</center></th><td><center><%=rs2.getString(2)%></center></td></tr>
						<tr><th><center>Occupation</center></th><td><center><%=rs2.getString(6)%></center></td></tr>
						<tr><th><center></center></th><td><center><a href="hrsearch2.jsp?id=<%=rs2.getString(1)%>">View</a></center></td></tr>
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