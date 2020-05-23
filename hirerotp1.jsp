<%@include file="dbcon.jsp"%>
<%@page import="java.util.Random"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="SMS.Sms"%>
<%
Statement st1;
int x;
String hrid=(String)session.getAttribute("hrid");
String heotp=(String)session.getAttribute("heotp");
String name=request.getParameter("name");
String phn=request.getParameter("phn");
String addr=request.getParameter("addr");
String email=request.getParameter("email");
String hotp=request.getParameter("hotp");
System.out.println(" hrid "+hrid+" heotp "+heotp+" name "+name+" phn "+phn+" addr "+addr+" email "+email+" hotp "+hotp);
System.out.println(heotp+"=="+hotp);
if(hotp.equals(heotp)){
	st1=con.createStatement();
	x=st1.executeUpdate(" update hirer set name='"+name+"',phn='"+phn+"',addr='"+addr+"',email='"+email+"' where hrid='"+hrid+"' ");
	System.out.println(" update hirer set name='"+name+"',phn='"+phn+"',addr='"+addr+"',email='"+email+"' where hrid='"+hrid+"' ");
	if(x!=0){
		System.out.println("true");
		response.sendRedirect("hirerlogin.jsp?Profile_Update_Success");
		}else{
			System.out.println("true false");
			response.sendRedirect("hirerlogin.jsp?Profile_Update_Failed");
			}
	}else{
		System.out.println("false");
		response.sendRedirect("hirerlogin.jsp?Profile_Update_Failed");
}
%>