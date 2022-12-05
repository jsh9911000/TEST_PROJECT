<%@page import="member.service.MemberService"%>
<%@page import="member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	MemberDao dao = new MemberDao();
	MemberService ms = new MemberService(dao);
	boolean isDelete = ms.delete(id);
	if(isDelete){
		session.removeAttribute("id");
	};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 입니다.</title>
</head>
<body>

<script>
	alert("탈퇴 되었습니다.");
	location.href = "../index.jsp";
</script>
</body>
</html>