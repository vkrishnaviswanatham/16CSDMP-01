<%@include file="dbcon.jsp"%>
<%@page import="java.util.Random"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="SMS.Sms"%>
<%
Statement st;
ResultSet rs;
int x;

String name1=request.getParameter("name1");
String pwd1=request.getParameter("pwd1");
String opt1=request.getParameter("opt1");

if(opt1.equals("1")){
	if(name1.equals("admin") && pwd1.equals("admin"))
		response.sendRedirect("adminhome.jsp?Login_Success");
	else
		response.sendRedirect("adminlogin.jsp?Login_Failed");
}else if(opt1.equals("2")){
	st=con.createStatement();
	rs=st.executeQuery(" select * from hirer where hrid='"+name1+"' and pwd='"+pwd1+"' ");
	if(rs.next()){
		session.setAttribute("hrid",name1);
		response.sendRedirect("hirerhome.jsp?Login_Success");
	}else{
		response.sendRedirect("hirerlogin.jsp?Login_Failed");
	}
}else if(opt1.equals("4")){
	st=con.createStatement();
	rs=st.executeQuery(" select * from hiree where heid='"+name1+"' and pwd='"+pwd1+"' ");
	if(rs.next()){
		session.setAttribute("heid",name1);
		response.sendRedirect("hireehome.jsp?Login_Success");
	}else{
		response.sendRedirect("hireelogin.jsp?Login_Failed");
	}
}else{
	response.sendRedirect("index.html?Operation_Failed");
}
%>