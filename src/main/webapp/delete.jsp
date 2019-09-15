<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="kr.co.itcen.guestbook.dao.GuestBookDao"%>
<%@page import="kr.co.itcen.guestbook.vo.GuestBookVo"%>
<%
	
	request.setCharacterEncoding("utf-8");

	String no = request.getParameter("no");
	Long longNo = (long)(Integer.parseInt(no));
	String password = request.getParameter("password");
	
	GuestBookVo vo = new GuestBookVo();
	vo.setNo(longNo);
	vo.setPassword(password);
	
	new GuestBookDao().delete(vo);
	
	response.sendRedirect(request.getContextPath());
	
%>
