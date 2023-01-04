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
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");


	MemberDAO dao = MemberDAO.getInstance();
	
	int check = dao.login(id, pwd);
	String msg = "";
	
	
	if(check == 1)    // 로그인 성공
    { 
        // 세션에 현재 아이디 세팅
        session.setAttribute("sessionId", id);
        msg = "Index.jsp";
    }
    else if(check == 0) // 비밀번호가 틀릴경우
    {
        msg = "Login.jsp?msg=0";
    }
    else if(check == -1)  // 아이디가 틀릴경우
    {
        msg = "Login.jsp?msg=-1";
    }
    else if(check == -2){
    	msg = "Login.jsp?msg=-2";
    }
     
   
    response.sendRedirect(msg);
	
%>