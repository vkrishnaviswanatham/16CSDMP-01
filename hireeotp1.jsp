<%@include file="dbcon.jsp"%>
<%@page import="java.util.Random"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="SMS.Sms"%>
<%
Statement st1;
int x;
String heid=(String)session.getAttribute("heid");
String heotp=(String)session.getAttribute("heotp");
String name=request.getParameter("name");
String phn=request.getParameter("phn");
String addr=request.getParameter("addr");
String occ=request.getParameter("occ");
String hotp=request.getParameter("hotp");
System.out.println(" heid "+heid+" heotp "+heotp+" name "+name+" phn "+phn+" addr "+addr+" occ "+occ+" hotp "+hotp);
System.out.println(heotp+"=="+hotp);
if(hotp.equals(heotp)){
	st1=con.createStatement();
	x=st1.executeUpdate(" update hiree set name='"+name+"',phn='"+phn+"',addr='"+addr+"' where heid='"+heid+"' ");
	System.out.println(" update hiree set name='"+name+"',phn='"+phn+"',addr='"+addr+"' where heid='"+heid+"' ");
	if(x!=0){
		System.out.println("true");
		response.sendRedirect("hireelogin.jsp?Profile_Update_Success");
		}else{
			System.out.println("true false");
			response.sendRedirect("hireelogin.jsp?Profile_Update_Failed");
			}
	}else{
		System.out.println("false");
		response.sendRedirect("hireelogin.jsp?Profile_Update_Failed");
}
%>