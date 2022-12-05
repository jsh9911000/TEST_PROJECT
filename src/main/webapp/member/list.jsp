<%@page import="member.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="member.service.MemberService"%>
<%@page import="member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	MemberDao dao = new MemberDao();
	MemberService ms = new MemberService(dao);
	List<MemberDto> list = ms.selectAll();
	request.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체회원 목록 페이지입니다.</title>
<style>
	body {
		background-color:black;
	}
	#title {
		color:white;
		text-align:center;
	}
	.container {
		width:600px;
		height:800px;
		margin-top:100px;
		margin-left:550px;
		background-color:gray;
		border:2px solid tomato;
		border-radius:8px;
	}
</style>
</head>
<body>
	<header>
		<div class="main_title">
			<h1 id="title">전체회원</h1>
		</div>
	</header>
	<main>
		<div class="container">
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>가입 날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="tmp" items="${list }">
						<tr>
							<td>${tmp.num }</td>
							<td>${tmp.name }</td>
							<td>${tmp.joinDate }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<button type="button" id="home">홈으로</button>
		</div>
	</main>
<script>
	home.addEventListener("click", () => {
		location.href = "../index.jsp";
	})
</script>
</body>
</html>