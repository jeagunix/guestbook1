<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="kr.co.itcen.guestbook.dao.GuestBookDao"%>
<%@page import="kr.co.itcen.guestbook.vo.GuestBookVo"%>
<%
	
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	
	GuestBookVo vo = new GuestBookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setText(message);
	
	new GuestBookDao().insert(vo);
	
	response.sendRedirect(request.getContextPath());
	
%>
