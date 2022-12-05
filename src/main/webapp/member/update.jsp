<%@page import="member.service.MemberService"%>
<%@page import="member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("id");
	String pwd = request.getParameter("newPWD");
	
	MemberDao dao = new MemberDao();
	MemberService ms = new MemberService(dao);
	ms.update(id, pwd);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정 입니다.</title>
</head>
<body>

<script>
	alert("수정되었습니다.");
	location.href = "../index.jsp";
</script>
</body>
</html>