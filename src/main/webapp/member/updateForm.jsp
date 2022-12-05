<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정 폼입니다.</title>
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
			<h1 id="title">${id }</h1>
		</div>
	</header>
	<main>
		<div class="container">
			<form action="update.jsp" method="post">
				<label for="newPWD">새 비밀번호</label>
				<input type="text" name="newPWD" id="newPWD"/>
				<label for="checkNewPWD">새 비밀번호 확인</label>
				<input type="text" name="checkNewPWD" id="checkNewPWD"/>
				<button type="submit">수정</button>
			</form>
		</div>
	</main>
</body>
</html>