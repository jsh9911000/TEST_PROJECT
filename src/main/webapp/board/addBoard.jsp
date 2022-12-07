<%@page import="member.dto.MemberDto"%>
<%@page import="member.service.MemberService"%>
<%@page import="member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	MemberDao dao = new MemberDao();
	MemberService ms = new MemberService(dao);
	
	MemberDto dto = ms.select(id);
	request.setAttribute("dto", dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 추가 페이지입니다.</title>
</head>
<body>
	<header>
		<div class="main_title">
			<h1 id="title">게시판 추가하기</h1>
		</div>
	</header>
	<main>
		<div class="container">
			<form action="list.jsp" method="post">
				<label for="name">이름</label>
				<input type="text" name="name" id="name" value="${dto.name }" readonly/>
				<label for="title">제목</label>
				<input type="text" name="title" id="title"/>
				<label for="content">게시글</label>
				<textarea name="content" id="content" cols="30" rows="10">
				</textarea>
				<button type="submit" id="addBtn">추가</button>
			</form>
		</div>
	</main>
</body>
</html>