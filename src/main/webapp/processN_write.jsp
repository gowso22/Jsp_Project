<%@page import="dao.NoticeDAO"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="util.DBConnection" %>

<%
	request.setCharacterEncoding("UTF-8");

	String sessionId = (String) session.getAttribute("sessionId");
	String title = request.getParameter("title");
	String content = request.getParameter("content");


	NoticeDAO dao = NoticeDAO.getInstance();
	
	
	dao.write(title, sessionId, content);

     
   
    response.sendRedirect("Notice.jsp");
	
%>