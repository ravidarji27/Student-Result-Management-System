<%@ page import ="Project.ConnectionProvider" %>
<%@ page import ="java.sql.*" %>

<%
String course = request.getParameter("course") ;
String branch = request.getParameter("branch") ;
String rollNo = request.getParameter("rollNo") ;
String name = request.getParameter("name") ;
String father = request.getParameter("fatherName") ;
String gender = request.getParameter("gender") ;

try
{
	Connection con=ConnectionProvider.getcon() ;
	Statement st = con.createStatement() ;
	st.executeUpdate("insert into student value('"+course+"','"+branch+"','"+rollNo+"','"+name+"','"+father+"','"+gender+"')");
	response.sendRedirect("adminHome.jsp");
}

catch(Exception e)
{
	out.println(e);
}
%>