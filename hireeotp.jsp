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
						<h2><a href="hireehome.jsp">Home</a> | <a href="heupdate.jsp">Update</a> | <a href="hehits.jsp">Hits</a> | <a href="index.html">Logout</a></h2>
					</section>
				</div>
			</section>

		<!-- One -->
			<section id="one" class="wrapper">
				<div class="inner split">
					<section>
						
						<center>
						<form action="hireeotp1.jsp" method="post">
						<h2>Enter OTP</h2>
						<%@include file="dbcon.jsp"%>
						<%@page import="java.util.Random"%>
						<%@page import="java.security.SecureRandom"%>
						<%@page import="SMS.Sms"%>
						<%
						String heid=(String)session.getAttribute("heid");
						String name=request.getParameter("name");
						String hreid=request.getParameter("hreid");
						String phn=request.getParameter("phn");
						String addr=request.getParameter("addr");
						String occ=request.getParameter("occ");
						
						Random RANDOM = new SecureRandom();
						int PASSWORD_LENGTH = 5;
						String letters = "0123456789";
						String uid = "";
						for (int i = 0; i < PASSWORD_LENGTH; i++) {
							int index = (int) (RANDOM.nextDouble() * letters.length());
							uid += letters.substring(index, index + 1);
							}
						String mesg="Your%20OTP%20Number%20is%20"+uid;
						System.out.println("Your OTP Number is "+uid);
						Sms.sendSMS(phn,mesg);
						session.setAttribute("heotp",uid);
						
						Statement st1=con.createStatement();
						int x=st1.executeUpdate(" update hiree set otp='"+uid+"' where heid='"+heid+"' ");
						
						Statement st=con.createStatement();
						ResultSet rs=st.executeQuery(" select * from hiree where heid='"+heid+"' ");
						if(rs.next()){
							%>
						<table>
						<input type="hidden" name="name" value="<%=name%>">
						<input type="hidden" name="phn" value="<%=phn%>">
						<input type="hidden" name="addr" value="<%=addr%>">
						<input type="hidden" name="occ" value="<%=occ%>">
						<tr><input type="text" name="hotp" placeholder="Enter OTP" required style="margin-bottom: 20px;"></tr>
						<tr><input type="submit" value="Verify" class="button alt" style="margin-bottom: 20px;"></tr>
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