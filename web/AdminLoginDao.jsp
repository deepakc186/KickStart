

<%@page import="myPackage.AdminDao"%>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");

String result=AdminDao.login(email, password);

if(result.equals("true")){
	session.setAttribute("email", "admin");
	response.sendRedirect("adminHome.jsp");
}
else{
	response.sendRedirect("index.jsp");
}
%>