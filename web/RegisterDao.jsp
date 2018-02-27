<%-- 
    Document   : RegisterDao
    Created on : Feb 19, 2018, 6:08:25 AM
    Author     : Deepak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>
<%@page import="myPackage.UserDao"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String result=UserDao.registerUser(name,email);

if(result.equals("true")){
	Random random=new Random();
	int i=random.nextInt(3)+1;
	session.setAttribute("email",email);
	session.setAttribute("set", ""+i);
	response.sendRedirect("home.jsp");
}

if(result.equals("false")){
	response.sendRedirect("index.jsp?status=false");
}

if(result.equals("registered")){
    response.sendRedirect("index.jsp?status=registered");
}
%>