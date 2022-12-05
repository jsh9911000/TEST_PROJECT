<%@page import="member.service.MemberService"%>
<%@page import="member.dao.MemberDao"%>
<%@page import="member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	MemberDao dao = new MemberDao();
	MemberService ms = new MemberService(dao);
	boolean isExist = ms.login(id, pwd);
	
	if(isExist = true){
		session.setAttribute("id", id);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지 입니다.</title>
</head>
<body>

<script>
	alert("로그인 되었습니다.");
	location.href = "../index.jsp";
</script>
</body>
</html>