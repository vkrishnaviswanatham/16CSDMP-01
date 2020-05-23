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
						String id=request.getParameter("id");
						String rt;
						
						Statement st1=con.createStatement();
						ResultSet rs1=st1.executeQuery(" select * from hiree where id='"+id+"' ");
						if(rs1.next()){
							
							Statement st2=con.createStatement();
						ResultSet rs2=st2.executeQuery(" select avg(rating) as rt from herating where heid='"+rs1.getString(7)+"' group by heid ");
						if(rs2.next()){
							rt=rs2.getString("rt");
						}else{
							rt="--";
						}
							
							int exp=Integer.parseInt(rs1.getString(10));
							DateFormat df2=new SimpleDateFormat("yyyy");
							Date dt2=new Date();
							
							int dob=Integer.parseInt(rs1.getString(9));
							DateFormat df1=new SimpleDateFormat("yyyy");
							Date dt1=new Date();
							
							DateFormat df=new SimpleDateFormat("dd/MM/yyyy");
							Date dt=new Date();
							Statement st=con.createStatement();
							int x=st.executeUpdate(" insert into search (he,hr,sdt) values ('"+rs1.getString(7)+"','"+hrid+"','"+df.format(dt)+"') ");
							%>
						<!--<tr><th><center>ID No.</center></th><td><center><%=rs1.getString(7)%></center></td></tr>-->
						<tr><th><center>Name</center></th><td><center><%=rs1.getString(2)%></center></td></tr>
						<tr><th><center>Phone</center></th><td><center><%=rs1.getString(4)%></center></td></tr>
						<tr><th><center>Address</center></th><td><center><%=rs1.getString(5)%></center></td></tr>
						<tr><th><center>Occupation</center></th><td><center><%=rs1.getString(6)%></center></td></tr>
						<tr><th><center>Age</center></th><td><center><%=Integer.parseInt(df1.format(dt1))-dob%></center></td></tr>
						<tr><th><center>Experience</center></th><td><center><%=Integer.parseInt(df2.format(dt2))-exp%></center></td></tr>
						<tr><th><center>Rating</center></th><td><center><%=rt%></center></td></tr>
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