<%@page import="member.service.MemberService"%>
<%@page import="member.dao.MemberDao"%>
<%@page import="member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");	//form 전송이 post 방식일 경우, 인코딩!
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	MemberDto dto = new MemberDto();
	dto.setName(name);
	dto.setUserID(id);
	dto.setUserPWD(pwd);
	
	MemberDao dao = new MemberDao();
	MemberService ms = new MemberService(dao);
	
	boolean isExist = ms.isExist(id);
	if(isExist){
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 성공 페이지</title>
<style>
	body {
		background-color:black;
	}
	.main_title {
		border: 2px solid tomato;
	}
	#title {
		color:white;
		text-align:center;
	}
</style>
</head>
<body>

<script>
	alert("회원가입 되었습니다. 메인화면으로 이동하겠습니다.");
	location.href = "../index.jsp";
</script>
</body>
</html>