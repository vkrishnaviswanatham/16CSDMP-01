<%@include file="dbcon.jsp"%>
<%@page import="java.util.Random"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="SMS.Sms"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%
Statement st;
ResultSet rs;
int x;

MultipartRequest m=new MultipartRequest(request,"C:/Tomcat 7.0/webapps/EmpowerIlliterate/Adhaar/");
String opt=m.getParameter("opt");
String name=m.getParameter("name");
String email=m.getParameter("email");
String pwd=m.getParameter("pwd");
String phn=m.getParameter("phn");
String addr=m.getParameter("addr");
String occ=m.getParameter("occ");
String dob=m.getParameter("dob");
String exp=m.getParameter("exp");
String hreid=m.getParameter("hreid");
String hotp=m.getParameter("hotp");
String adhaarnum=m.getParameter("adhaarnum");
String adhaarimg=m.getFilesystemName("adhaarimg");

Random RANDOM = new SecureRandom();
int PASSWORD_LENGTH = 5;
String letters = "0123456789";
String uid = "";
for (int i = 0; i < PASSWORD_LENGTH; i++) {
	int index = (int) (RANDOM.nextDouble() * letters.length());
	uid += letters.substring(index, index + 1);
	}
String hid="EI"+uid;
String msg="Your%20ID%20Number%20is%20"+hid;
String mesg="Your%20OTP%20Number%20is%20"+uid;

if(opt.equals("3")){
	st=con.createStatement();
	x=st.executeUpdate(" insert into hirer (name,email,pwd,phn,addr,hrid,adhaarnum,adhaarimg) values ('"+name+"','"+email+"','"+pwd+"','"+phn+"','"+addr+"','"+hid+"','"+adhaarnum+"','"+adhaarimg+"') ");
	if(x!=0){
		Sms.sendSMS(phn,msg);
		response.sendRedirect("hirerlogin.jsp?Register_Success");
	}		
	else
		response.sendRedirect("hirerlogin.jsp?Register_Failed");
}else if(opt.equals("5")){
	st=con.createStatement();
	x=st.executeUpdate(" insert into hiree (name,pwd,phn,addr,occ,heid,dob,exp,adhaarnum,adhaarimg) values ('"+name+"','"+pwd+"','"+phn+"','"+addr+"','"+occ+"','"+hid+"','"+dob+"','"+exp+"','"+adhaarnum+"','"+adhaarimg+"') ");
	if(x!=0){
		Sms.sendSMS(phn,msg);
		response.sendRedirect("hireelogin.jsp?Register_Success");
	}		
	else
		response.sendRedirect("hireelogin.jsp?Register_Failed");
}else{
	response.sendRedirect("index.html?Operation_Failed");
}
%>