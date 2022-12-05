<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP를 이용한 Backend 연습입니다.</title>
<style>
	body{
		background-color:black;
	}
	.main_title {
		border:2px solid tomato;
	}
	#title {
		color:white;
		text-align:center;
	}
	.memberInfo {
		text-align:center;
	}
	#greet {
		color:white;
		font-weight:bold;
		list-style-type:none;
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
	.root_box {
		width:500px;
		height:500px;
		background-color:white;
		border:2px solid tomato;
		border-radius:8px;
	}
	
</style>
</head>
<body>
	<header>
		<div class="main_title">
			<h1 id="title">연습용 PROJECT</h1>
		</div>
	</header>
	<main>
		<div class="memberInfo">
			<ul>
				<c:choose>
					<c:when test="${id != null}">
						<li id="greet"><a href="member/info.jsp">${id }</a>님 반갑습니다.</li>
					</c:when>
				</c:choose>
			</ul>
		</div>
		<div class="container">
			<div class="root_box">
				<dl>
					<dt>회원가입</dt>
					<dd><button type=button id="signup">이동</button></dd>
					<dt>로그인</dt>
					<dd><button type="button" id="login">이동</button></dd>
					<dt>전체회원 목록</dt>
					<dd><button type="button" id="selectAll">이동</button></dd>
					<dt>게시판</dt>
					<dd><button type="button" id="boardList">이동</button></dd>
				</dl>	
			</div>
		</div>
	</main>
<script>
	signup.addEventListener("click", () => {
		location.href = "member/signupForm.jsp";
	});
	login.addEventListener("click", () => {
		location.href = "member/loginForm.jsp";
	});
	selectAll.addEventListener("click", () => {
		location.href = "member/list.jsp";
	});
	boardList.addEventListener("click", () => {
		location.href = "board/list.jsp";
	});
</script>
</body>
</html>