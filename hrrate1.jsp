<%@include file="dbcon.jsp"%>
<%
String hrid=(String)session.getAttribute("hrid");
String heid=request.getParameter("heid");
String review=request.getParameter("review");
String rating=request.getParameter("rating");

Statement st=con.createStatement();
int x=st.executeUpdate(" insert into herating (hrid,heid,review,rating) values ('"+hrid+"','"+heid+"','"+review+"','"+rating+"') ");
if(x!=0){
	response.sendRedirect("hirerhome.jsp?Successfully_Rated");
}else{
	response.sendRedirect("hrrate.jsp?Rating_Unsuccessful");
}
%>