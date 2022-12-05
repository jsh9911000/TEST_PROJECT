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
	
	request.setAttribute("dto", dto); //이거 중요하다. 안하면 안 나온다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		background-color:black;
	}
	.main_title {
		border:2px solid tomato;
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
		display:flex;
		justify-content:center;
		align-items:center;
	}
</style>
</head>
<body>
	<header>
		<div class="main_title">
			<h3 id="title">${id }님의 정보</h3>
		</div>
	</header>
	<main>
		<div class="container">
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>비밀번호</th>
						<th>가입날짜</th>
						<th>수정하기</th>
						<th>탈퇴하기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${dto.num }</td>
						<td>${dto.name }</td>
						<td>${dto.userPWD }</td>
						<td>${dto.joinDate }</td>
						<td><button type="button" id="update">수정</button></td>
						<td><button type="button" id="deleteMember">탈퇴</button></td>
					</tr>
				</tbody>
			</table>
			<div>
				<button type="button" id="home">홈으로</button>
			</div>
		</div>
	</main>
<script>
	update.addEventListener("click", () => {
		location.href = "updateForm.jsp";
	});
	deleteMember.addEventListener("click", () => {
		const isDelete = confirm("탈퇴하시겠습니까?");
		if(isDelete){
			location.href = "delete.jsp";
		};
	});
	home.addEventListener("click", () => {
		location.href = "../index.jsp";
	});
</script>
</body>
</html>